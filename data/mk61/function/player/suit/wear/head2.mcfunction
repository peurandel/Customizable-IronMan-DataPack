item replace entity @s armor.head with leather_helmet 1
$item modify entity @s armor.head [{"function": "minecraft:set_custom_data","tag":"$(piece)"},{"function": "minecraft:set_name","name": "MK61's Helmet"},{"function": "minecraft:set_item","item":"$(id)"}]
scoreboard players reset @s prd.ironman.weardelay2