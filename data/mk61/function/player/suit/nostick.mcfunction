execute if items entity @s weapon.mainhand *[custom_data~{prd.suit.controller:1}] run item replace entity @s weapon.mainhand from entity @s weapon.offhand
item replace entity @s weapon.offhand with stick[custom_data={prd.suit.controller:1},minecraft:consumable={consume_seconds:0,animation:none}]
