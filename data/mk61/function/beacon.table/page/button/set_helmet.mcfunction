execute unless block ~ ~ ~ barrel{Items:[{Slot:9b}]} run return run data remove entity @s data.suit."minecraft:custom_data".data.suit.helmet
data modify entity @s data.suit."minecraft:custom_data".data.suit.helmet set from block ~ ~ ~ Items[{Slot:9b}]
data modify entity @s data.suit."minecraft:custom_data".data.suit.armorcost[3] set value [0,100]