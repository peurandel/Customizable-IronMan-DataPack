execute unless score @s prd.ui.id matches 0.. run function mk61:orbit.table/open

scoreboard players operation #search prd.ui.id = @s prd.ui.id
execute at @s as @e[tag=prd.ui,type=item_display] if score @s prd.ui.id = #search prd.ui.id run tp @s ~ ~1 ~