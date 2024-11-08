
## set button based on what was taken.
# intermediate variable avoid multiple inputs here!
scoreboard players set .button prd.ui 0
execute unless data storage prd:this ui.container[{Slot:0b}] run scoreboard players set .button prd.ui 1
execute unless data storage prd:this ui.container[{Slot:1b}] run scoreboard players set .button prd.ui 2
execute unless data storage prd:this ui.container[{Slot:9b}] run scoreboard players set .button prd.ui 3
execute unless data storage prd:this ui.container[{Slot:10b}] run scoreboard players set .button prd.ui 4
execute unless data storage prd:this ui.container[{Slot:11b}] run scoreboard players set .button prd.ui 5
execute unless data storage prd:this ui.container[{Slot:12b}] run scoreboard players set .button prd.ui 6
execute unless data storage prd:this ui.container[{Slot:13b}] run scoreboard players set .button prd.ui 7
execute unless data storage prd:this ui.container[{Slot:14b}] run scoreboard players set .button prd.ui 8
execute unless data storage prd:this ui.container[{Slot:15b}] run scoreboard players set .button prd.ui 9
execute unless data storage prd:this ui.container[{Slot:16b}] run scoreboard players set .button prd.ui 10
execute unless data storage prd:this ui.container[{Slot:17b}] run scoreboard players set .button prd.ui 11
execute unless data storage prd:this ui.container[{Slot:18b}] run function mk61:beacon.table/page/skill/setoffslot {slot:0}
execute unless data storage prd:this ui.container[{Slot:19b}] run function mk61:beacon.table/page/skill/setoffslot {slot:1}
execute unless data storage prd:this ui.container[{Slot:20b}] run function mk61:beacon.table/page/skill/setoffslot {slot:2}
execute unless data storage prd:this ui.container[{Slot:21b}] run function mk61:beacon.table/page/skill/setoffslot {slot:3}
execute unless data storage prd:this ui.container[{Slot:22b}] run function mk61:beacon.table/page/skill/setoffslot {slot:4}
execute unless data storage prd:this ui.container[{Slot:23b}] run function mk61:beacon.table/page/skill/setoffslot {slot:5}
execute unless data storage prd:this ui.container[{Slot:24b}] run function mk61:beacon.table/page/skill/setoffslot {slot:6}
execute unless data storage prd:this ui.container[{Slot:25b}] run function mk61:beacon.table/page/skill/setoffslot {slot:7}
execute unless data storage prd:this ui.container[{Slot:26b}] run function mk61:beacon.table/page/skill/setoffslot {slot:8}

data remove storage prd:this ui.container
## pick a page to go to

execute if score .button prd.ui matches 1 run function mk61:beacon.table/page/skill/back
execute if score .button prd.ui matches 2 run scoreboard players set @s prd.ironman.beacon.editor.page 1
execute if score .button prd.ui matches 3 run scoreboard players set @s prd.ironman.beacon.editor.page 3010
execute if score .button prd.ui matches 4 run scoreboard players set @s prd.ironman.beacon.editor.page 3011
execute if score .button prd.ui matches 5 run scoreboard players set @s prd.ironman.beacon.editor.page 3012
execute if score .button prd.ui matches 6 run scoreboard players set @s prd.ironman.beacon.editor.page 3013
execute if score .button prd.ui matches 7 run scoreboard players set @s prd.ironman.beacon.editor.page 3014
execute if score .button prd.ui matches 8 run scoreboard players set @s prd.ironman.beacon.editor.page 3015
execute if score .button prd.ui matches 9 run scoreboard players set @s prd.ironman.beacon.editor.page 3016
execute if score .button prd.ui matches 10 run scoreboard players set @s prd.ironman.beacon.editor.page 3017
execute if score .button prd.ui matches 11 run scoreboard players set @s prd.ironman.beacon.editor.page 3018

execute unless score @s prd.ironman.beacon.editor.page matches 3 run scoreboard players set .page_change prd.ui 1
execute unless score @s prd.ironman.beacon.editor.page matches 3 run function mk61:beacon.table/ui/refresh