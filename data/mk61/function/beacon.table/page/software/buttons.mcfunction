
## set button based on what was taken.
# intermediate variable avoid multiple inputs here!
scoreboard players set .button prd.ui 0
execute unless data storage prd:this ui.container[{Slot:0b}] run scoreboard players set .button prd.ui 1
execute unless data storage prd:this ui.container[{Slot:1b}] run scoreboard players set .button prd.ui 2
data remove storage prd:this ui.container
## pick a page to go to

execute if score .button prd.ui matches 1 run function mk61:beacon.table/page/software/back
execute if score .button prd.ui matches 2 run scoreboard players set @s prd.ironman.beacon.editor.page 1

execute unless score @s prd.ironman.beacon.editor.page matches 4 run scoreboard players set .page_change prd.ui 1
execute unless score @s prd.ironman.beacon.editor.page matches 4 run function mk61:beacon.table/ui/refresh