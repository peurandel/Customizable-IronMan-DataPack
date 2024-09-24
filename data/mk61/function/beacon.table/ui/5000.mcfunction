data remove block ~ ~ ~ Items

item replace block ~ ~ ~ container.0 with beacon[custom_name='{"text":"Pick UP YOUR SUIT","color":"dark_purple"}',lore=['{"text":"Nano : "}','{"text":""}'],minecraft:custom_data={pane:1b,button:1}]
item replace block ~ ~ ~ container.1 with ice[custom_name='{"text":"Back to Panel","color":"aqua"}',minecraft:custom_data={pane:1b,button:2}]

item replace block ~ ~ ~ container.9 with iron_helmet[custom_name='{"text":"Set HELMET","color":"aqua"}',minecraft:custom_data={pane:1b,button:5001}]
    item replace block ~ ~ ~ container.10 with red_wool[custom_name='{"text":"-10","color":"red"}',minecraft:custom_data={pane:1b,button:5010}]
    item replace block ~ ~ ~ container.11 with paper[custom_name='{"text":"Damage : ","color":"aqua"}',minecraft:custom_data={pane:1b,button:5011}]
    item replace block ~ ~ ~ container.12 with green_wool[custom_name='{"text":"+10","color":"green"}',minecraft:custom_data={pane:1b,button:5012}]

item replace block ~ ~ ~ container.18 with iron_chestplate[custom_name='{"text":"Set ChestPlate","color":"aqua"}',minecraft:custom_data={pane:1b,button:5002}]
    item replace block ~ ~ ~ container.19 with red_wool[custom_name='{"text":"-10","color":"red"}',minecraft:custom_data={pane:1b,button:5020}]
    item replace block ~ ~ ~ container.20 with paper[custom_name='{"text":"Damage : ","color":"aqua"}',minecraft:custom_data={pane:1b,button:5021}]
    item replace block ~ ~ ~ container.21 with green_wool[custom_name='{"text":"+10","color":"green"}',minecraft:custom_data={pane:1b,button:5022}]

item replace block ~ ~ ~ container.13 with iron_leggings[custom_name='{"text":"Set Leggings","color":"aqua"}',minecraft:custom_data={pane:1b,button:5003}]
    item replace block ~ ~ ~ container.14 with red_wool[custom_name='{"text":"-10","color":"red"}',minecraft:custom_data={pane:1b,button:5030}]
    item replace block ~ ~ ~ container.15 with paper[custom_name='{"text":"Damage : ","color":"aqua"}',minecraft:custom_data={pane:1b,button:5031}]
    item replace block ~ ~ ~ container.16 with green_wool[custom_name='{"text":"+10","color":"green"}',minecraft:custom_data={pane:1b,button:5032}]

item replace block ~ ~ ~ container.22 with iron_boots[custom_name='{"text":"Set Boots","color":"aqua"}',minecraft:custom_data={pane:1b,button:5004}]
    item replace block ~ ~ ~ container.23 with red_wool[custom_name='{"text":"-10","color":"red"}',minecraft:custom_data={pane:1b,button:5040}]
    item replace block ~ ~ ~ container.24 with paper[custom_name='{"text":"Damage : ","color":"aqua"}',minecraft:custom_data={pane:1b,button:5041}]
    item replace block ~ ~ ~ container.25 with green_wool[custom_name='{"text":"+10","color":"green"}',minecraft:custom_data={pane:1b,button:5042}]


execute if data entity @s data.suit."minecraft:custom_data".data.suit.boots.id run data modify block ~ ~ ~ Items[{Slot:22b}] set from entity @s data.suit."minecraft:custom_data".data.suit.boots
execute if data entity @s data.suit."minecraft:custom_data".data.suit.leggings.id run data modify block ~ ~ ~ Items[{Slot:13b}] set from entity @s data.suit."minecraft:custom_data".data.suit.leggings
execute if data entity @s data.suit."minecraft:custom_data".data.suit.chestplate.id run data modify block ~ ~ ~ Items[{Slot:18b}] set from entity @s data.suit."minecraft:custom_data".data.suit.chestplate
execute if data entity @s data.suit."minecraft:custom_data".data.suit.helmet.id run data modify block ~ ~ ~ Items[{Slot:9b}] set from entity @s data.suit."minecraft:custom_data".data.suit.helmet

