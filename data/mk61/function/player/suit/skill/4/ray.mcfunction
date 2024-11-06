scoreboard players remove #prd.entity.this prd.ironman.flyspeed 1

execute if score @s prd.target matches 0 run tp @s ~ ~ ~ facing entity @e[tag=!prd.this,tag=!prd.entity.this,limit=1,distance=..10]
#킬
execute if function mk61:player/suit/skill/4/explosion run return run kill @s
tp @s ^ ^ ^0.3
execute if score #prd.entity.this prd.ironman.flyspeed matches 1.. at @s run function mk61:player/suit/skill/4/ray