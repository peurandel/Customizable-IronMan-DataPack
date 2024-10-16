scoreboard players add @s prd.ironman.weardelay1 1

$execute store result score #prd.this.cost prd.ironman.energy run data modify storage prd:this item.cost_e set from storage prd:db player.$(dummy).data.minecraft:custom_data.data.suit.armorcost[0][0]
$execute store result score #prd.this.cost prd.ironman.nano run data modify storage prd:this item.cost_n set from storage prd:db player.$(dummy).data.minecraft:custom_data.data.suit.armorcost[0][1]
execute store result score #prd.this prd.this run data get storage prd:this item.cost_n 0.1

execute if score @s prd.ironman.nano < #prd.this.cost prd.ironman.nano run return 0
execute if score @s prd.ironman.energy < #prd.this.cost prd.ironman.energy run return 0
execute unless score @s prd.ironman.weardelay1 >= #prd.this prd.this run return 0

summon item_display ~ ~ ~ {Tags:[prd.wear]}
$data modify entity @e[tag=prd.wear,limit=1] item set from storage prd:db player.$(dummy).data.minecraft:custom_data.data.suit.boots
data modify entity @e[tag=prd.wear,limit=1] item.components.minecraft:custom_data.suit set value 61
data modify entity @e[tag=prd.wear,limit=1] item.components.minecraft:max_damage set from storage prd:this item.cost_n
item replace entity @s armor.feet from entity @e[tag=prd.wear,limit=1] container.0
kill @e[tag=prd.wear]
