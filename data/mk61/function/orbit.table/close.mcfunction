# find the matching ui with player score
scoreboard players operation #search prd.ui.id = @s prd.ui.id
# clear the ui that is closing
execute as @e[tag=prd.ui,type=chest_minecart] if score @s prd.ui.id = #search prd.ui.id run data remove entity @s Items
# kill the ui
execute as @e[tag=prd.ui] if score @s prd.ui.id = #search prd.ui.id run kill @s
# reset the player's score
scoreboard players reset @s prd.ui.id
tag @s remove prd.player.orbit.table