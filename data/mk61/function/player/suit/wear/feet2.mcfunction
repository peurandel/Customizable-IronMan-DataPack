item replace entity @s armor.feet with leather_boots 1
$item modify entity @s armor.feet [ \
    {"function": "minecraft:set_custom_data","tag":"$(piece)"}, \
    {"function": "minecraft:set_name","name": "[PRD] Boots Of Mk61"}, \
    {"function": "minecraft:set_item","item":"$(id)"}, \
    {"function": "minecraft:set_components","components": {"minecraft:max_damage": $(cost_n)}} \
    ]
$scoreboard players remove @s prd.ironman.nano $(cost_n)
scoreboard players reset @s prd.ironman.weardelay1