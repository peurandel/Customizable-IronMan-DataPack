effect give @s speed 1 0 true

scoreboard players operation .search prd.id = @s prd.id
execute as @e[tag=prd.entity.flycore] if score @s prd.id = .search prd.id run tag @s add prd.entity.flycore.this

#tp @e[tag=prd.entity.flycore.this] ~ ~ ~

#Fly speed
execute if score @s prd.ironman.flyspeed matches 1.. run scoreboard players remove @s prd.ironman.flyspeed 1
#rotate
execute unless score @s prd.ironman.flyspeed matches 800.. if predicate { "condition": "entity_properties", "entity": "this", "predicate": { "type_specific": { "type": "player", "input": { "forward": true } } }} run scoreboard players remove @s prd.ironman.energy 1 
execute unless score @s prd.ironman.flyspeed matches 800.. if predicate { "condition": "entity_properties", "entity": "this", "predicate": { "type_specific": { "type": "player", "input": { "forward": true } } }} run scoreboard players add @s prd.ironman.flyspeed 2
execute if score @s prd.ironman.flyspeed matches 5.. if predicate { "condition": "entity_properties", "entity": "this", "predicate": { "type_specific": { "type": "player", "input": { "backward": true } } }} run scoreboard players remove @s prd.ironman.flyspeed 4

execute store result storage prd:this fly.speed double 0.025 run scoreboard players get @s prd.ironman.flyspeed
execute store result score #prd.this prd.ironman.energy run data get storage prd:this fly.speed
##actionbar용 스코어 연산
execute store result storage prd:this fly.speedac int 1 run data get storage prd:this fly.speed 72
execute store result score #prd.this prd.ironman.flyspeed run data get storage prd:this fly.speedac
##에너지 소모용 연산

##회전각용 연산
execute store result storage prd:this fly.rotate double 0.25 run scoreboard players get @s prd.ironman.flyspeed


#out of energy
execute if score @s prd.ironman.energy <= #prd.this prd.ironman.energy run function mk61:player/suit/fly/unfly
#flying
execute as @e[tag=prd.entity.flycore.this] at @s run function mk61:player/suit/fly/speed with storage prd:this fly
#rotating flycore when player Key A or D
execute if predicate { "condition": "entity_properties", "entity": "this", "predicate": { "type_specific": { "type": "player", "input": { "right": true } } }} as @e[tag=prd.entity.flycore.this,limit=1] rotated as @s run rotate @s ~1 ~
execute if predicate { "condition": "entity_properties", "entity": "this", "predicate": { "type_specific": { "type": "player", "input": { "left": true } } }} as @e[tag=prd.entity.flycore.this,limit=1] rotated as @s run rotate @s ~-1 ~


effect give @s minecraft:levitation 1 0 true
effect give @s minecraft:jump_boost 1 1 true

particle flame ~ ~ ~ 0 0 0 0 1 force @a
playsound minecraft:block.fire.ambient master @a ~ ~ ~ 0.2 1
playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 0.1 0.8
tag @e[tag=prd.entity.flycore.this] remove prd.entity.flycore.this