$tag @e[scores={prd.id=$(id)}] add prd.this
scoreboard players add @s prd.ironman.energy 1
execute if score @s prd.target matches 0 run tp @s ~ ~ ~ facing entity @e[tag=!prd.this,limit=1,distance=..10]
#킬
execute if function mk61:player/suit/skill/4_1 run kill @s
tp @s ^ ^ ^2
tag @s remove prd.this