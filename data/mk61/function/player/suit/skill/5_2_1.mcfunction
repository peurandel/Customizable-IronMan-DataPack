data merge entity @s {Tags:[prd.test],NoAI:1b,Invisible:1b,Marker:1b}
scoreboard players set @s prd.velocity 0
scoreboard players operation @s prd.id = @e[tag=prd.this,limit=1] prd.id
scoreboard players operation @s prd.length = %range prd.num
tp @s ~ ~ ~ facing entity @e[tag=prd.this,limit=1]

execute at @s run summon armor_stand ^ ^ ^1 {Tags:[prd.caddle],NoAI:1b,Invisible:1b,Marker:1b}
scoreboard players operation @e[tag=prd.caddle,tag=!check] prd.id = @s prd.id
ride @e[tag=prd.this,limit=1] mount @e[tag=prd.caddle,tag=!check,limit=1]
tag @e[tag=prd.caddle,tag=!check] add check
