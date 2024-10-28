summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Tags:[prd.ironman.trap,prd.entity,prd.check],ArmorItems:[{id:"iron_boots",count:1},{},{},{}],DisabledSlots:2039583}
scoreboard players operation @e[tag=prd.check] prd.id = @s prd.id
$scoreboard players set @e[tag=prd.check] prd.num $(id)
$scoreboard players set @e[tag=prd.check] prd.this $(explosion)
tag @e[tag=prd.check] remove prd.check