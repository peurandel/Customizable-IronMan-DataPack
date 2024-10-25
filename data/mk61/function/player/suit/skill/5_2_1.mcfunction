data merge entity @s {Tags:[prd.test],NoAI:1b,Invisible:1b,Marker:1b}
scoreboard players set @s prd.velocity 0
scoreboard players operation @s prd.id = @e[tag=prd.this,limit=1] prd.id
#길이 설정
execute store result score @s prd.length run data get entity @s Pos[1]
execute as @e[tag=prd.this] store result score @s prd.num run data get entity @s Pos[1]
scoreboard players operation @s prd.length = @e[tag=prd.this,limit=1] prd.num

tp @s ~ ~ ~ facing entity @e[tag=prd.this,limit=1]

execute at @s run summon armor_stand ^ ^ ^1 {Tags:[prd.caddle],NoAI:1b,Invisible:1b,Marker:1b}
scoreboard players operation @e[tag=prd.caddle,tag=!check] prd.id = @s prd.id
ride @e[tag=prd.this,limit=1] mount @e[tag=prd.caddle,tag=!check,limit=1]
tag @e[tag=prd.caddle,tag=!check] add check
