tag @s add prd.grab.this
execute as @a if score @s prd.id = @e[tag=prd.grab.this,limit=1] prd.id run tag @s add prd.owner.this
execute as @e[tag=prd.caddle] if score @s prd.id = @e[tag=prd.grab.this,limit=1] prd.id run tag @s add prd.caddle.this

#수평 위 각도에서 일부러 감속(무한회전 방지)
scoreboard players remove @s[x_rotation=-180..0,scores={prd.velocity=1..}] prd.velocity 1
scoreboard players add @s[x_rotation=-180..0,scores={prd.velocity=..-1}] prd.velocity 1

#진자의 가속도는 g*sin(세타), 마크 각도는 (세타-90)이므로 g*cos(세타) 필요
##반지름이 13.5인 원으로 13.5*cos(세타)를 구함
execute positioned 0 0 0 align xyz run summon marker ~ ~ ~ {Tags:["prd.cos"]}
execute store result entity @e[tag=prd.cos,type=marker,limit=1] Rotation[0] float 1 run data get entity @s Rotation[1]
execute at @e[tag=prd.cos,type=marker] run tp @e[tag=prd.cos,type=marker] ^ ^ ^9.81
execute store result score #prd.cos prd.num run data get entity @e[tag=prd.cos,type=marker,limit=1] Pos[2] 1
kill @e[tag=prd.cos,type=marker]
##가속도를 속도에 더하기
    scoreboard players operation @s prd.velocity += #prd.cos prd.num

#속도 -> 각속도 변환 공식, (속도 * 57) / 사슬길이
##길이는 스케일 10이 적용됨
scoreboard players operation #prd.speed prd.num = @s prd.velocity
scoreboard players operation #prd.speed prd.num *= #57 prd.num

scoreboard players operation #prd.distance prd.num = @s prd.length
scoreboard players operation #prd.distance prd.num /= #10 prd.num
scoreboard players operation #prd.speed prd.num /= #prd.distance prd.num

#nbt 수정해 실제로 회전시키기
execute store result score @s prd.rotatey run data get entity @s Rotation[1] 100
scoreboard players operation @s prd.rotatey += #prd.speed prd.num
execute store result entity @s Rotation[1] float 0.01 run scoreboard players get @s prd.rotatey

execute store result storage prd:this grab.length int 1 run scoreboard players get @s prd.length
function mk61:player/suit/skill/5/line with storage prd:this grab
#tellraw @a {"score": {"name": "@s","objective": "prd.velocity"}}

execute as @e[tag=prd.caddle.this,limit=1] on passengers unless score @s prd.id = @e[tag=prd.caddle.this,limit=1] prd.id run function mk61:player/suit/skill/5/cut

tag @s remove prd.grab.this
tag @a[tag=prd.owner.this] remove prd.owner.this
tag @e[tag=prd.caddle.this] remove prd.caddle.this