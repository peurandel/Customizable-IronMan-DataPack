data modify entity @s data.suit set from block ~ ~ ~ Items[{id:"minecraft:beacon"}].components
execute unless data entity @s data.suit."minecraft:custom_data".data.suit.armorcost run data modify entity @s data.suit."minecraft:custom_data".data.suit.armorcost set value [[],[],[],[]]
execute if block ~ ~ ~ barrel{Items:[{id:"minecraft:beacon",components:{"minecraft:custom_data":{suit:61}}}]} run scoreboard players set @s prd.ironman.beacon.editor.page 1
