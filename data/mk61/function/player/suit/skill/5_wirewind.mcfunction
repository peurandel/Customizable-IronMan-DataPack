execute if score @e[tag=snbtemp,limit=1] snbarmmain matches 4.. run scoreboard players remove @e[tag=snbtemp] snbarmmain 4

#모델 길이줄이기
execute as @e[tag=snbsaddle,limit=1] at @s on passengers if entity @s[type=!player] if score @s prd.id > @e[tag=snbtemp,limit=1] snbarmmain run function snbarm:arm/wirewindmodel

execute at @e[tag=snbsaddle] run summon marker ~ ~ ~ {Tags:["snbwindtemp"]}

tp @e[tag=snbsaddle] ~ ~ ~
data modify entity @e[tag=snbsaddle,limit=1] Pos[0] set from entity @e[tag=snbwindtemp,limit=1] Pos[0]
data modify entity @e[tag=snbsaddle,limit=1] Pos[2] set from entity @e[tag=snbwindtemp,limit=1] Pos[2]

kill @e[tag=snbwindtemp]