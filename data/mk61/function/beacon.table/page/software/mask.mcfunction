data remove block ~ ~ ~ Items

item replace block ~ ~ ~ container.0 with beacon[custom_name='{"text":"Pick UP YOUR SUIT","color":"dark_purple"}',minecraft:custom_data={ui_item:{button:0}}]
item replace block ~ ~ ~ container.1 with crafter[custom_name='{"text":"GO TO MENU","color":"dark_purple"}',minecraft:custom_data={ui_item:{button:1}}]
item replace block ~ ~ ~ container.2 with light_blue_stained_glass_pane[minecraft:hide_tooltip={},minecraft:custom_data={ui_item:{empty:1b}}]
item replace block ~ ~ ~ container.3 with light_blue_stained_glass_pane[minecraft:hide_tooltip={},minecraft:custom_data={ui_item:{empty:1b}}]
item replace block ~ ~ ~ container.4 with light_blue_stained_glass_pane[minecraft:hide_tooltip={},minecraft:custom_data={ui_item:{empty:1b}}]
item replace block ~ ~ ~ container.5 with light_blue_stained_glass_pane[minecraft:hide_tooltip={},minecraft:custom_data={ui_item:{empty:1b}}]
item replace block ~ ~ ~ container.6 with light_blue_stained_glass_pane[minecraft:hide_tooltip={},minecraft:custom_data={ui_item:{empty:1b}}]
item replace block ~ ~ ~ container.7 with player_head[minecraft:custom_name='{"text":"추가중"}',minecraft:custom_data={ui_item:{empty:1b}},minecraft:profile={properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGNlYzgwN2RjYzE0MzYzMzRmZDRkYzlhYjM0OTM0MmY2YzUyYzllN2IyYmYzNDY3MTJkYjcyYTBkNmQ3YTQifX19"}]}]
item replace block ~ ~ ~ container.8 with player_head[minecraft:custom_name='{"text":"추가중"}',minecraft:custom_data={ui_item:{empty:1b}},minecraft:profile={properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTAxYzdiNTcyNjE3ODk3NGIzYjNhMDFiNDJhNTkwZTU0MzY2MDI2ZmQ0MzgwOGYyYTc4NzY0ODg0M2E3ZjVhIn19fQ=="}]}]

## get techs
#data modify entity @s data.this.suit set from entity @s data.suit.minecraft:custom_data.data.tech
#function mk61:beacon.table/page/get_tech with entity @s data.this.suit[0]