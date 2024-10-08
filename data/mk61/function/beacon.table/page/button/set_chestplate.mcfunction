execute unless block ~ ~ ~ barrel{Items:[{Slot:18b}]} run return run data remove entity @s data.suit."minecraft:custom_data".data.suit.chestplate
data modify entity @s data.suit."minecraft:custom_data".data.suit.chestplate set from block ~ ~ ~ Items[{Slot:18b}]
data modify entity @s data.suit."minecraft:custom_data".data.suit.armorcost[2] set value [0,100]