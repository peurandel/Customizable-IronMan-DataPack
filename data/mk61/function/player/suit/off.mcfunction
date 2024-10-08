tag @s remove prd.ironman
#갑옷 뱃기기
##헬멧
execute store result score #prd.this prd.this run data get entity @s Inventory[{Slot:103b}].components."minecraft:damage"
execute store result score #prd.this2 prd.this run data get entity @s Inventory[{Slot:103b}].components."minecraft:max_damage"
scoreboard players operation #prd.this2 prd.this -= #prd.this prd.this
scoreboard players operation @s prd.ironman.nano += #prd.this2 prd.this
execute if items entity @s armor.head *[minecraft:custom_data~{suit:61}] run item replace entity @s armor.head with air
##흉갑
execute store result score #prd.this prd.this run data get entity @s Inventory[{Slot:102b}].components."minecraft:damage"
execute store result score #prd.this2 prd.this run data get entity @s Inventory[{Slot:102b}].components."minecraft:max_damage"
scoreboard players operation #prd.this2 prd.this -= #prd.this prd.this
scoreboard players operation @s prd.ironman.nano += #prd.this2 prd.this
execute if items entity @s armor.chest *[minecraft:custom_data~{suit:61}] run item replace entity @s armor.chest with air
##레깅스
execute store result score #prd.this prd.this run data get entity @s Inventory[{Slot:101b}].components."minecraft:damage"
execute store result score #prd.this2 prd.this run data get entity @s Inventory[{Slot:101b}].components."minecraft:max_damage"
scoreboard players operation #prd.this2 prd.this -= #prd.this prd.this
scoreboard players operation @s prd.ironman.nano += #prd.this2 prd.this
execute if items entity @s armor.legs *[minecraft:custom_data~{suit:61}] run item replace entity @s armor.legs with air
##부츠
execute store result score #prd.this prd.this run data get entity @s Inventory[{Slot:100b}].components."minecraft:damage"
execute store result score #prd.this2 prd.this run data get entity @s Inventory[{Slot:100b}].components."minecraft:max_damage"
scoreboard players operation #prd.this2 prd.this -= #prd.this prd.this
scoreboard players operation @s prd.ironman.nano += #prd.this2 prd.this
execute if items entity @s armor.feet *[minecraft:custom_data~{suit:61}] run item replace entity @s armor.feet with air
tellraw @s {"score": {"name": "@s","objective": "prd.ironman.nano"}}
$execute store result storage prd:db player.$(dummy).data.minecraft:custom_data.data.energy[1][0] int 1 run scoreboard players get @s prd.ironman.nano
$data modify storage prd:this item_data set from storage prd:db player.$(dummy).data
function mk61:player/suit/loot_item with storage prd:this
title @s actionbar {"text":"OFF!","color":"red"}

$data remove storage prd:db player.$(dummy).data

return 0