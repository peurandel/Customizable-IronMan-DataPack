#tech
data remove block ~ ~ ~ Items

item replace block ~ ~ ~ container.0 with beacon[custom_name='{"text":"Pick UP YOUR SUIT","color":"dark_purple"}',minecraft:custom_data={pane:1b,button:1}]
item replace block ~ ~ ~ container.1 with ice[custom_name='{"text":"Back to Panel","color":"aqua"}',minecraft:custom_data={pane:1b,button:2}]
item replace block ~ ~ ~ container.2 with light_blue_stained_glass_pane[minecraft:hide_tooltip={},minecraft:custom_data={pane:1b}]
item replace block ~ ~ ~ container.3 with light_blue_stained_glass_pane[minecraft:hide_tooltip={},minecraft:custom_data={pane:1b}]
item replace block ~ ~ ~ container.4 with light_blue_stained_glass_pane[minecraft:hide_tooltip={},minecraft:custom_data={pane:1b}]
item replace block ~ ~ ~ container.5 with light_blue_stained_glass_pane[minecraft:hide_tooltip={},minecraft:custom_data={pane:1b}]
item replace block ~ ~ ~ container.6 with light_blue_stained_glass_pane[minecraft:hide_tooltip={},minecraft:custom_data={pane:1b}]
item replace block ~ ~ ~ container.7 with light_blue_stained_glass_pane[minecraft:hide_tooltip={},minecraft:custom_data={pane:1b}]
item replace block ~ ~ ~ container.8 with light_blue_stained_glass_pane[minecraft:hide_tooltip={},minecraft:custom_data={pane:1b}]

#테크 불러오기
#tellraw @a {"nbt": "data.suit.minecraft:custom_data.data.tech","entity": "@s"}
data modify entity @s data.this.suit set from entity @s data.suit.minecraft:custom_data.data.tech
function mk61:beacon.table/page/get_tech with entity @s data.this.suit[0]