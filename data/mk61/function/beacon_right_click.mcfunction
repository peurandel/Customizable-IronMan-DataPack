advancement revoke @s only mk61:storage_right_click
execute as @s[tag=prd.ironman] run return run tellraw @s "You are already wearing the suit!"

tag @s add prd.ironman

execute store result storage prd:this dummy int 1 run attribute @s minecraft:luck modifier value get peurandel:key 38685626227668133590597632

#Save beacon data in the personal storage DB
function mk61:player/storage/set with storage prd:this


#Read Suit Info
tellraw @s [{"text":"     [Suit INFO]     "}]
tellraw @s [{"text": "Nano : "},{"nbt":"SelectedItem.components.minecraft:custom_data.data.energy[1][0]","entity":"@s"},{"text":":"},{"nbt":"SelectedItem.components.minecraft:custom_data.data.energy[1][1]","entity":"@s"}]
tellraw @s [{"text": "Energy : "},{"nbt":"SelectedItem.components.minecraft:custom_data.data.energy[0][0]","entity":"@s"},{"text":":"},{"nbt":"SelectedItem.components.minecraft:custom_data.data.energy[0][1]","entity":"@s"}]

#Read Beacon's Tech
tellraw @s [{"text":"This Suit has these Techs!"}]
data modify storage prd:this id set from storage prd:this techreader[0].id
function mk61:beacon_right_click2 with storage prd:this
#Remove the beacon
item replace entity @s weapon.mainhand with air

