item replace entity @s armor.legs with leather_leggings 1
$item modify entity @s armor.legs [{"function": "minecraft:set_custom_data","tag":"$(piece)"},{"function": "minecraft:set_name","name": "MK61's Leggings"},{"function": "minecraft:set_item","item":"$(id)"}]
scoreboard players reset @s prd.ironman.weardelay1