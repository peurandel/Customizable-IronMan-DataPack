$execute as @s[nbt={SelectedItemSlot:$(offslot)}] run return 0
data remove storage prd:this usedskill
$data modify storage prd:this usedskill set from storage prd:db player.$(dummy).data.minecraft:custom_data.data.skill[$(slot)][0]
execute store result score #prd.this prd.this run data get storage prd:this usedskill.energy[1]
scoreboard players operation @s prd.ironman.energy -= #prd.this prd.this
execute store result score #prd.this prd.this run data get storage prd:this usedskill.energy[0]
scoreboard players operation @s prd.ironman.nano -= #prd.this prd.this
function mk61:player/suit/skill/use with storage prd:this usedskill