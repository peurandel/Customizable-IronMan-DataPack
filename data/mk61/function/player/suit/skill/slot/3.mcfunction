summon area_effect_cloud ~ ~ ~ {Tags:[imbounce]}
execute anchored eyes run tp @e[type=area_effect_cloud,tag=imbounce] ^ ^ ^ ~ ~
scoreboard players set %bounce prd.num 30
scoreboard players set %range prd.num 200
scoreboard players operation @e[tag=imbounce,tag=!imID] prd.id = @s prd.id
tag @e[tag=imbounce,tag=!imID] add imID
tag @s add prd.this
$execute as @e[type=area_effect_cloud,tag=imbounce] at @s run function mk61:player/suit/skill/3 {damage:$(damage),id:$(id)}
playsound minecraft:block.conduit.deactivate master @a ~ ~ ~ 0.5 2
kill @e[type=area_effect_cloud,tag=imbounce]
tag @s remove prd.this