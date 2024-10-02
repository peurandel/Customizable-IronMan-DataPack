scoreboard players add @s prd.ironman.weardelay2 1
execute unless score @s prd.ironman.weardelay2 matches 15.. run return 0

$data modify storage prd:this item.piece set from storage prd:db player.$(dummy).data.minecraft:custom_data.data.suit.helmet.components.minecraft:custom_data
$data modify storage prd:this item.id set from storage prd:db player.$(dummy).data.minecraft:custom_data.data.suit.helmet.id
data modify storage prd:this item.piece.suit set value 61
function mk61:player/suit/wear/head2 with storage prd:this item