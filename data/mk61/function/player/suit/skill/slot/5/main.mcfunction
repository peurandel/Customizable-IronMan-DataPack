summon area_effect_cloud ~ ~ ~ {Tags:[imbounce]}
execute anchored eyes run tp @e[type=area_effect_cloud,tag=imbounce] ^ ^ ^ ~ ~
scoreboard players set %range prd.num 250
scoreboard players operation @e[tag=imbounce,tag=!imID] prd.id = @s prd.id
tag @e[tag=imbounce,tag=!imID] add imID
tag @s add prd.this
execute as @e[type=area_effect_cloud,tag=imbounce] at @s run function mk61:player/suit/skill/slot/5/ray
playsound minecraft:block.conduit.deactivate master @a ~ ~ ~ 0.5 2
kill @e[type=area_effect_cloud,tag=imbounce]
tag @s remove prd.this