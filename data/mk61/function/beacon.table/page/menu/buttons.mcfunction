## set button based on what was taken.
# intermediate variable avoid multiple inputs here!
scoreboard players set .button prd.ui 0
execute unless data storage prd:this ui.container[{Slot:0b}] run scoreboard players set .button prd.ui 1
execute unless data storage prd:this ui.container[{Slot:9b}] run scoreboard players set .button prd.ui 2
execute unless data storage prd:this ui.container[{Slot:10b}] run scoreboard players set .button prd.ui 3
execute unless data storage prd:this ui.container[{Slot:11b}] run scoreboard players set .button prd.ui 4
execute unless data storage prd:this ui.container[{Slot:12b}] run scoreboard players set .button prd.ui 5


## pick a page to go to
execute if score .button prd.ui matches 1 run function mk61:beacon.table/page/menu/back
execute if score .button prd.ui matches 2 run scoreboard players set @s prd.ironman.beacon.editor.page 2
execute if score .button prd.ui matches 3 run scoreboard players set @s prd.ironman.beacon.editor.page 3
execute if score .button prd.ui matches 4 run scoreboard players set @s prd.ironman.beacon.editor.page 4
execute if score .button prd.ui matches 5 run scoreboard players set @s prd.ironman.beacon.editor.page 5


execute unless score @s prd.ironman.beacon.editor.page matches 1 run scoreboard players set .page_change prd.ui 1
execute unless score @s prd.ironman.beacon.editor.page matches 1 run function mk61:beacon.table/ui/refresh