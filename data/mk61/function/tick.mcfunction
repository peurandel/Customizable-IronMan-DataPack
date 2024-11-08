execute as @a at @s run function mk61:player/main
execute as @e[tag=prd.ironman.beacon.table,type=marker] at @s run function mk61:beacon.table/main
execute as @e[tag=prd.ironman.orbit.table,type=marker] at @s run function mk61:orbit.table/main
execute as @e[tag=prd.entity] at @s run function mk61:skill/init
execute as @e[tag=prd.ui,type=chest_minecart] at @s run function mk61:orbit.table/minecart/tick
