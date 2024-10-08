#basic energy setting
$execute store result score @s prd.ironman.energy run data get storage prd:db player.$(dummy).data.minecraft:custom_data.data.energy[0][0]
$execute store result score @s prd.ironman.max_energy run data get storage prd:db player.$(dummy).data.minecraft:custom_data.data.energy[0][1]

$execute store result score @s prd.ironman.nano run data get storage prd:db player.$(dummy).data.minecraft:custom_data.data.energy[1][0]
$execute store result score @s prd.ironman.max_nano run data get storage prd:db player.$(dummy).data.minecraft:custom_data.data.energy[1][1]

#Set the stick
execute unless items entity @s weapon.offhand *[custom_data~{prd.suit.controller:1}] run function mk61:player/suit/nostick

execute store result storage prd:this slot int 1 run data get entity @s SelectedItemSlot
#Actionbar
function mk61:player/suit/actionbar with storage prd:this

#Right Click
##OFF
execute as @s[scores={prd.ironman.triggered=1}] run function mk61:player/suit/right_click

#비행
$execute if data storage prd:db player.$(dummy).data.minecraft:custom_data.data.tech[{tech:1}] unless predicate mk61:onground if predicate mk61:sneak run say hi

#갑옷 입히기

execute unless items entity @s armor.chest *[minecraft:custom_data~{suit:61}] run function mk61:player/suit/wear/chest with storage prd:this

$execute if data storage prd:db player.$(dummy).data.minecraft:custom_data.data.suit.leggings.id if items entity @s armor.chest *[minecraft:custom_data~{suit:61}] unless items entity @s armor.legs *[minecraft:custom_data~{suit:61}] run function mk61:player/suit/wear/leggings with storage prd:this

$execute if data storage prd:db player.$(dummy).data.minecraft:custom_data.data.suit.helmet.id if items entity @s armor.chest *[minecraft:custom_data~{suit:61}] unless items entity @s armor.head *[minecraft:custom_data~{suit:61}] run function mk61:player/suit/wear/head with storage prd:this

$execute if data storage prd:db player.$(dummy).data.minecraft:custom_data.data.suit.boots.id if items entity @s armor.legs *[minecraft:custom_data~{suit:61}] unless items entity @s armor.feet *[minecraft:custom_data~{suit:61}] run function mk61:player/suit/wear/feet with storage prd:this


#에너지 재생
$execute if data storage prd:db player.$(dummy).data.minecraft:custom_data.data.tech[{id:2}] if score @s prd.ironman.max_energy > @s prd.ironman.energy run scoreboard players add @s prd.ironman.energy 1
scoreboard players operation #prd.this prd.ironman.energy = @s prd.ironman.energy
scoreboard players operation #prd.this prd.ironman.energy *= #100 prd.num
scoreboard players operation #prd.this prd.ironman.energy /= @s prd.ironman.max_energy
$execute store result storage prd:db player.$(dummy).data.minecraft:custom_data.data.energy[0][0] int 1 run scoreboard players get @s prd.ironman.energy

$execute if data storage prd:db player.$(dummy).data.minecraft:custom_data.data.tech[{id:3}] if score @s prd.ironman.max_nano > @s prd.ironman.nano run scoreboard players add @s prd.ironman.nano 1
scoreboard players operation #prd.this prd.ironman.nano = @s prd.ironman.nano
scoreboard players operation #prd.this prd.ironman.nano *= #100 prd.num
scoreboard players operation #prd.this prd.ironman.nano /= @s prd.ironman.max_nano
$execute store result storage prd:db player.$(dummy).data.minecraft:custom_data.data.energy[1][0] int 1 run scoreboard players get @s prd.ironman.nano


scoreboard players reset @s prd.ironman.triggered