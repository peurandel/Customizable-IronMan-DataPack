## set button based on what was taken.
# intermediate variable avoid multiple inputs here!
scoreboard players set .button prd.ui 0

execute if data storage prd:this ui.container[{Slot:13b}].components."minecraft:custom_data".data.suit run scoreboard players set .button prd.ui 1

## pick a page to go to

execute if score .button prd.ui matches 1 run function mk61:beacon.table/page/root/get_storage

execute unless score @s prd.ironman.beacon.editor.page matches 0 run scoreboard players set .page_change prd.ui 1
execute unless score @s prd.ironman.beacon.editor.page matches 0 run function mk61:beacon.table/ui/refresh