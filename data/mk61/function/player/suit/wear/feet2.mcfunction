item replace entity @s armor.feet with leather_boots 1
$item modify entity @s armor.feet [{"function": "minecraft:set_custom_data","tag":"$(piece)"},{"function": "minecraft:set_name","name": "MK61's Boots"},{"function": "minecraft:set_item","item":"$(id)"}]
scoreboard players reset @s prd.ironman.weardelay1