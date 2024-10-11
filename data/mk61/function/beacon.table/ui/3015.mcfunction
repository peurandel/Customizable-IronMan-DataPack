#Skills
data remove block ~ ~ ~ Items

item replace block ~ ~ ~ container.0 with beacon[custom_name='{"text":"Pick UP YOUR SUIT","color":"dark_purple"}',minecraft:custom_data={pane:1b,button:1}]
item replace block ~ ~ ~ container.1 with ice[custom_name='{"text":"Back to Panel","color":"aqua"}',minecraft:custom_data={pane:1b,button:2}]
item replace block ~ ~ ~ container.2 with diamond_sword[custom_name='{"text":"SKILL","color":"dark_purple"}',minecraft:custom_data={pane:1b,button:4}]
item replace block ~ ~ ~ container.3 with light_blue_stained_glass_pane[minecraft:hide_tooltip={},minecraft:custom_data={pane:1b}]
item replace block ~ ~ ~ container.4 with light_blue_stained_glass_pane[minecraft:hide_tooltip={},minecraft:custom_data={pane:1b}]
item replace block ~ ~ ~ container.5 with light_blue_stained_glass_pane[minecraft:hide_tooltip={},minecraft:custom_data={pane:1b}]
item replace block ~ ~ ~ container.6 with light_blue_stained_glass_pane[minecraft:hide_tooltip={},minecraft:custom_data={pane:1b}]
item replace block ~ ~ ~ container.7 with light_blue_stained_glass_pane[minecraft:hide_tooltip={},minecraft:custom_data={pane:1b}]
item replace block ~ ~ ~ container.8 with light_blue_stained_glass_pane[minecraft:hide_tooltip={},minecraft:custom_data={pane:1b}]

data modify entity @s data.this.suit set from entity @s data.suit.minecraft:custom_data.data.skill[5]
function mk61:beacon.table/page/get_skill with entity @s data.this.suit[0]