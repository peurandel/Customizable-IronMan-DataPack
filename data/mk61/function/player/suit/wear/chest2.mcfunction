item replace entity @s armor.chest with leather_chestplate 1
$item modify entity @s armor.chest [{"function": "minecraft:set_custom_data","tag":"$(piece)"},{"function": "minecraft:set_name","name": "MK61's Chestplate"},{"function": "minecraft:set_item","item":"$(id)"}]
scoreboard players reset @s prd.ironman.weardelay1