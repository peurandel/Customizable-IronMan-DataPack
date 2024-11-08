## isolate items to be returned
data modify storage prd:this ui.return set from storage prd:this ui.container
data remove storage prd:this ui.return[{components:{"minecraft:custom_data":{ui_item:{}}}}]
data remove storage prd:this ui.return[{components:{"minecraft:custom_data":{skill:1}}}]
# set the coords here to your shulker box!
function mk61:beacon.table/ui/return/start

scoreboard players operation #this prd.ironman.beacon.editor.page = @s prd.ironman.beacon.editor.page
execute store result storage prd:this ui.subnum int 1 run scoreboard players operation #this prd.ironman.beacon.editor.page %= #10 prd.num

## process what happened here
execute if score .page_change prd.ui matches 0 run function mk61:beacon.table/page/skillslot/buttons with storage prd:this ui

## apply mask of the ui shape -> if you are still on the same page!
execute if score @s prd.ironman.beacon.editor.page matches 3010..3018 run function mk61:beacon.table/page/skillslot/mask with storage prd:this ui