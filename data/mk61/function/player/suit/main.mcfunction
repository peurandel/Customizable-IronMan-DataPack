#basic energy setting
execute store result score @s prd.ironman.energy run function mk61:player/storage/get {parameter:"energy[0][0]"}
execute store result score @s prd.ironman.max_energy run function mk61:player/storage/get {parameter:"energy[0][1]"}

execute store result score @s prd.ironman.nano run function mk61:player/storage/get {parameter:"energy[1][0]"}
execute store result score @s prd.ironman.max_nano run function mk61:player/storage/get {parameter:"energy[1][1]"}

#에너지 재생
execute if score @s prd.ironman.max_energy > @s prd.ironman.energy run scoreboard players add @s prd.ironman.energy 1
execute if score @s prd.ironman.max_nano > @s prd.ironman.nano run scoreboard players add @s prd.ironman.nano 1


#액션바
$execute store result storage prd:db player.$(dummy).data.minecraft:custom_data.data.energy[0][0] int 1 run scoreboard players get @s prd.ironman.energy
$title @s actionbar [{"text":"Energy: "},{"nbt":"player.$(dummy).data.minecraft:custom_data.data.energy[0][0]","storage":"prd:db"},{"text":" Nano: "},{"nbt":"player.$(dummy).data.minecraft:custom_data.data.energy[1][0]","storage":"prd:db"}]

#갑옷 입히기

#execute unless entity @s[] function mk61:player/suit/wear/chest
function mk61:player/suit/wear/leggings
