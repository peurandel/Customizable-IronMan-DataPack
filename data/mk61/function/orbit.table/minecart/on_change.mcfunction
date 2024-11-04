say changed
# remove ui element items from players
clear @a *[minecraft:custom_data~{ui_item:{}}]

# future proofing, specifies it is a chest minecart
scoreboard players set .type prd.ui 1

# Detect player putting items into the UI
data modify storage prd:this ui.in set from storage prd:this ui.current 
data remove storage prd:this ui.in[{components:{"minecraft:custom_data":{ui_item:{ui_item:{}}}}}]
execute if data storage prd:this ui.in[0] run return run function mk61:orbit.table/menu/on_input

# Using the insert trick to overwrite slots which have been changed
data modify storage prd:this ui.temp set from storage prd:this ui.previous
data modify storage prd:this ui.temp[].components."minecraft:custom_data" merge value {prev:1b}
data modify entity @s Items insert 0 from storage prd:this ui.temp[]
data remove storage prd:this ui.temp
data modify storage prd:this ui.temp append from entity @s Items[{components:{"minecraft:custom_data":{prev:1b}}}]
data remove storage prd:this ui.in
data modify storage prd:this ui.in append from storage prd:this ui.temp[{components:{"minecraft:custom_data":{ui_item:{}}}}]
# bondage to prevent blank spots from clicking
execute if data storage prd:this ui.in[0].components."minecraft:custom_data".ui_item.empty run say hi
execute if data storage prd:this ui.in[0].components."minecraft:custom_data".ui_item.empty run data remove storage prd:this ui.in[0]
execute if data storage prd:this ui.in[0] unless data storage prd:this ui.in[1] run return run function mk61:orbit.table/menu/on_click

# Update Page & History if nothing happened

function mk61:orbit.table/menu/refresh