data modify entity @s data.suit set from block ~ ~ ~ Items[{id:"minecraft:beacon"}].components
execute if block ~ ~ ~ barrel{Items:[{id:"minecraft:beacon",components:{"minecraft:custom_data":{suit:61}}}]} run scoreboard players set @s prd.ironman.beacon.editor.page 1
data remove entity @s data.suit