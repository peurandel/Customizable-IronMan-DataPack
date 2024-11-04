#이진 재귀 tp
execute store result score #prd.this2 prd.ironman.flyspeed run data get storage prd:this fly.speed 5
execute as @e[tag=prd.entity.flycore.this] at @s run function mk61:player/suit/fly/raybineary

execute at @e[tag=prd.entity.flycore.this] run tp @s ~ ~ ~

$execute as @e[tag=prd.entity.flycore.this] at @s anchored eyes rotated as @e[tag=prd.ironman.fly.this] positioned ^ ^ ^5 rotated as @s positioned ^ ^ ^$(rotate) facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~
execute if predicate { "condition": "entity_properties", "entity": "this", "predicate": { "type_specific": { "type": "player", "input": { "right": true } } }} as @e[tag=prd.entity.flycore.this,limit=1] rotated as @s run rotate @s ~1 ~
execute if predicate { "condition": "entity_properties", "entity": "this", "predicate": { "type_specific": { "type": "player", "input": { "left": true } } }} as @e[tag=prd.entity.flycore.this,limit=1] rotated as @s run rotate @s ~-1 ~

#execute at @s rotated as @e[tag=prd.entity.flycore.this] run tp @s ~ ~ ~ ~ ~
