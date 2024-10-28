#basic energy setting
$execute store result score @s prd.ironman.energy run data get storage prd:db player.$(dummy).data.minecraft:custom_data.data.energy[0][0]
$execute store result score @s prd.ironman.max_energy run data get storage prd:db player.$(dummy).data.minecraft:custom_data.data.energy[0][1]

$execute store result score @s prd.ironman.nano run data get storage prd:db player.$(dummy).data.minecraft:custom_data.data.energy[1][0]
$execute store result score @s prd.ironman.max_nano run data get storage prd:db player.$(dummy).data.minecraft:custom_data.data.energy[1][1]

#Set the stick
execute unless items entity @s weapon.offhand *[custom_data~{prd.suit.controller:1}] run function mk61:player/suit/nostick

execute store result storage prd:this slot int 1 run data get entity @s SelectedItemSlot
$execute store result storage prd:this offslot int 1 run data get storage prd:db player.$(dummy).data.minecraft:custom_data.data.offslot
#Actionbar
$execute if items entity @s armor.head *[minecraft:custom_data~{suit:61}] run function mk61:player/suit/actionbar {dummy:$(dummy),offslot:$(offslot),slot:$(slot)}

function mk61:player/suit/selecteditem with storage prd:this
function mk61:player/suit/view with storage prd:this usedskill
#Right Click
##OFF
execute as @s[scores={prd.ironman.triggered=1}] run function mk61:player/suit/right_click

#Effects
$execute if items entity @s armor.head *[minecraft:custom_data~{suit:61}] if items entity @s armor.chest *[minecraft:custom_data~{suit:61}] if items entity @s armor.legs *[minecraft:custom_data~{suit:61}] if items entity @s armor.feet *[minecraft:custom_data~{suit:61}] run function mk61:player/suit/wear/effect {dummy:$(dummy)}
#비행
$execute as @s[tag=!prd.ironman.fly] if data storage prd:db player.$(dummy).data.minecraft:custom_data.data.tech[{id:1}] unless predicate mk61:onground if predicate mk61:sneak run function mk61:player/suit/fly/tag
execute as @s[tag=prd.ironman.fly] run function mk61:player/suit/fly/main

#갑옷 입히기

$execute unless items entity @s armor.chest *[minecraft:custom_data~{suit:61}] run function mk61:player/suit/wear/chest {dummy:$(dummy)}

$execute if data storage prd:db player.$(dummy).data.minecraft:custom_data.data.suit.leggings.id if items entity @s armor.chest *[minecraft:custom_data~{suit:61}] unless items entity @s armor.legs *[minecraft:custom_data~{suit:61}] run function mk61:player/suit/wear/leggings {dummy:$(dummy)}

$execute if data storage prd:db player.$(dummy).data.minecraft:custom_data.data.suit.helmet.id if items entity @s armor.chest *[minecraft:custom_data~{suit:61}] unless items entity @s armor.head *[minecraft:custom_data~{suit:61}] run function mk61:player/suit/wear/head {dummy:$(dummy)}

$execute if data storage prd:db player.$(dummy).data.minecraft:custom_data.data.suit.boots.id if items entity @s armor.legs *[minecraft:custom_data~{suit:61}] unless items entity @s armor.feet *[minecraft:custom_data~{suit:61}] run function mk61:player/suit/wear/feet {dummy:$(dummy)}


#에너지 재생
$execute if data storage prd:db player.$(dummy).data.minecraft:custom_data.data.tech[{id:2}] run function mk61:player/suit/gen_energy {dummy:$(dummy)}
scoreboard players operation #prd.this prd.ironman.energy = @s prd.ironman.energy
scoreboard players operation #prd.this prd.ironman.energy *= #100 prd.num
scoreboard players operation #prd.this prd.ironman.energy /= @s prd.ironman.max_energy
$execute store result storage prd:db player.$(dummy).data.minecraft:custom_data.data.energy[0][0] int 1 run scoreboard players get @s prd.ironman.energy

$execute if data storage prd:db player.$(dummy).data.minecraft:custom_data.data.tech[{id:3}] run function mk61:player/suit/gen_nano {dummy:$(dummy)}
scoreboard players operation #prd.this prd.ironman.nano = @s prd.ironman.nano
scoreboard players operation #prd.this prd.ironman.nano *= #100 prd.num
scoreboard players operation #prd.this prd.ironman.nano /= @s prd.ironman.max_nano
$execute store result storage prd:db player.$(dummy).data.minecraft:custom_data.data.energy[1][0] int 1 run scoreboard players get @s prd.ironman.nano


scoreboard players reset @s prd.ironman.triggered

tag @e remove prd.view.target.this