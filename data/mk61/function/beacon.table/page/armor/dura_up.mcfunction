$execute store result score #prd.this prd.this run data get entity @s data.suit.minecraft:custom_data.data.suit.armorcost[$(armor)][1]
execute if score #prd.this prd.this matches ..10 run return 0

scoreboard players add #prd.this prd.this 10
$execute store result entity @s data.suit.minecraft:custom_data.data.suit.armorcost[$(armor)][1] int 1 run scoreboard players get #prd.this prd.this