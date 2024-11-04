# make a copy of current Items
data modify storage prd:this ui.current set from entity @s Items

# obtain the previous tick's Item
execute on passengers run data modify storage prd:this ui.previous set from entity @s data.previous

# save current tick's Items over previous, if you are ablt to then something has changed
execute on passengers store result score #bool prd.ui run data modify entity @s data.previous set from storage prd:this ui.current

execute if score #bool prd.ui matches 1 run function mk61:orbit.table/minecart/on_change