tag @s remove prd.ironman
$data modify storage prd:this item_data set from storage prd:db player.$(dummy).data
function mk61:player/suit/loot_item with storage prd:this
$data remove storage prd:db player.$(dummy).data
title @s actionbar {"text":"OFF!","color":"red"}
#갑옷 뱃기기
##헬멧
execute store result score #prd.this prd.this run data get entity @s Inventory[{Slot:103b}].components."minecraft:damage"
scoreboard players operation @s prd.ironman.nano += #prd.this prd.this
execute if items entity @s armor.head *[minecraft:custom_data~{suit:61}] run item replace entity @s armor.head with air
##흉갑
execute store result score #prd.this prd.this run data get entity @s Inventory[{Slot:102b}].components."minecraft:damage"
scoreboard players operation @s prd.ironman.nano += #prd.this prd.this
execute if items entity @s armor.chest *[minecraft:custom_data~{suit:61}] run item replace entity @s armor.chest with air
##레깅스
execute store result score #prd.this prd.this run data get entity @s Inventory[{Slot:101b}].components."minecraft:damage"
scoreboard players operation @s prd.ironman.nano += #prd.this prd.this
execute if items entity @s armor.legs *[minecraft:custom_data~{suit:61}] run item replace entity @s armor.legs with air
##부츠
execute store result score #prd.this prd.this run data get entity @s Inventory[{Slot:100b}].components."minecraft:damage"
scoreboard players operation @s prd.ironman.nano += #prd.this prd.this
execute if items entity @s armor.feet *[minecraft:custom_data~{suit:61}] run item replace entity @s armor.feet with air

return 0