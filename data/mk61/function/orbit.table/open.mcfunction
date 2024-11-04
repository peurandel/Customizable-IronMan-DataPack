# summon the ui minecart stack
summon item_display ~ ~ ~ {view_range:0,width:0f,height:0f,teleport_duration:0,Tags:["prd.ui","new"],Passengers:[{id:"minecraft:chest_minecart",Invulnerable:1b,Tags:[prd.ui,new,prd.entity],CustomDisplayTile:1b,DisplayState:{Name:"minecraft:air"},Passengers:[{id:"minecraft:marker",Tags:[ui,new]}]}]}

# assign a ui.id that is unique to the player and the player and the minecart stack
scoreboard players add .global prd.ui.id 1
scoreboard players operation @s prd.ui.id = .global prd.ui.id
scoreboard players operation @e[tag=new] prd.ui.id = .global prd.ui.id 

# Open initial page
scoreboard players set .type prd.ui 1
execute as @e[tag=new,type=chest_minecart] run function mk61:orbit.table/menu/demo/root/open
execute as @e[tag=new,type=chest_minecart] run function mk61:orbit.table/minecart/load_page

tag @e remove new