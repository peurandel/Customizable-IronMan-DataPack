scoreboard players add @s prd.ironman.weardelay1 1

$execute store result score #prd.this.cost prd.ironman.energy run data modify storage prd:this item.cost_e set from storage prd:db player.$(dummy).data.minecraft:custom_data.data.suit.armorcost[2][0]
$execute store result score #prd.this.cost prd.ironman.nano run data modify storage prd:this item.cost_n set from storage prd:db player.$(dummy).data.minecraft:custom_data.data.suit.armorcost[2][1]
execute store result score #prd.this prd.this run data get storage prd:this item.cost_n 0.1

execute if score @s prd.ironman.nano < #prd.this.cost prd.ironman.nano run return 0
execute if score @s prd.ironman.energy < #prd.this.cost prd.ironman.energy run return 0
execute unless score @s prd.ironman.weardelay1 >= #prd.this prd.this run return 0

$data modify storage prd:this item.piece set from storage prd:db player.$(dummy).data.minecraft:custom_data.data.suit.chestplate.components.minecraft:custom_data
$data modify storage prd:this item.id set from storage prd:db player.$(dummy).data.minecraft:custom_data.data.suit.chestplate.id
data modify storage prd:this item.piece.suit set value 61

function mk61:player/suit/wear/chest2 with storage prd:this item
