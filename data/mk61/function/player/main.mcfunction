#Init Setting
execute unless score @s prd.id = @s prd.id run function mk61:player/init
tag @s add prd.player.this
clear @s *[custom_data~{ui_item:{}}]
execute unless entity @s[tag=prd.ironman] run clear @s *[custom_data~{prd.suit.controller:1}]

execute store result storage prd:this dummy int 1 run attribute @s minecraft:luck modifier value get peurandel:key 38685626227668133590597632
execute as @s[tag=prd.ironman] run function mk61:player/suit/main with storage prd:this

execute as @s[tag=prd.player.orbit.table] run function mk61:orbit.table/teleport
execute as @s[tag=!prd.player.orbit.table] if score @s prd.ui.id matches 0.. run function mk61:orbit.table/close
tag @s remove prd.player.this