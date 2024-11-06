scoreboard players add @s prd.ironman.weardelay2 1

$execute store result score #prd.this.cost prd.ironman.energy run data get storage prd:db player.$(dummy).data.minecraft:custom_data.data.suit.armorcost[3][0]
$execute store result score #prd.this.cost prd.ironman.nano run data get storage prd:db player.$(dummy).data.minecraft:custom_data.data.suit.armorcost[3][1]
$execute store result score #prd.this prd.this run data get storage prd:db player.$(dummy).data.minecraft:custom_data.data.suit.armorcost[3][1] 0.1

execute if score @s prd.ironman.nano < #prd.this.cost prd.ironman.nano run return 0
execute if score @s prd.ironman.energy < #prd.this.cost prd.ironman.energy run return 0
execute unless score @s prd.ironman.weardelay2 >= #prd.this prd.this run return 0

scoreboard players reset @s prd.ironman.weardelay2
scoreboard players operation @s prd.ironman.nano -= #prd.this.cost prd.ironman.nano
scoreboard players operation @s prd.ironman.energy -= #prd.this.cost prd.ironman.energy

$execute summon item_display run function mk61:player/suit/wear/item_display {armor1:"head",armor2:"helmet",dummy:"$(dummy)"}
