execute as @e[type=!marker,type=!area_effect_cloud] unless score @s prd.id = @e[tag=prd.this,limit=1] prd.id if entity @s[dx=0] positioned ~-0.9 ~-0.9 ~-0.9 if entity @s[dx=0] positioned ~0.9 ~0.9 ~0.9 run tag @s add prd.damaged
$damage @e[tag=prd.damaged,limit=1] $(damage) arrow by @e[tag=prd.this,limit=1]
execute if entity @e[tag=prd.damaged] at @s run playsound minecraft:entity.arrow.hit_player master @a[tag=prd.this,limit=1] ~ ~ ~
execute if entity @e[tag=prd.damaged] run scoreboard players set %range prd.num 1
tag @e[tag=prd.damaged] remove prd.damaged

#파티클
particle minecraft:soul_fire_flame ~ ~ ~ .1 .1 .1 0 6 force @a
execute if block ^ ^ ^ water run particle minecraft:bubble ~ ~ ~ .1 .1 .1 0 6 force @a
execute unless block ^ ^ ^0.3 #air run particle minecraft:explosion ~ ~ ~ .01 .01 .01 0 6 force @a

scoreboard players remove %range prd.num 1
$execute if score %bounce prd.num matches 1.. unless block ^ ^ ^0.5 #air run function mk61:player/suit/skill/bounce {damage:$(damage),id:$(id)}
$execute if score %range prd.num matches 1.. positioned ^ ^ ^0.5 if block ~ ~ ~ #air run function mk61:player/suit/skill/2/main {damage:$(damage),id:$(id)}