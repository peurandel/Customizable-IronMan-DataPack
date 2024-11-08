## isolate items to be returned
data modify storage prd:this ui.return set from storage prd:this ui.container
data remove storage prd:this ui.return[{components:{"minecraft:custom_data":{ui_item:{}}}}]
data remove storage prd:this ui.return[{components:{"minecraft:custom_data":{software:1}}}]
# set the coords here to your shulker box!
function mk61:beacon.table/ui/return/start

## process what happened here
execute if score .page_change prd.ui matches 0 run function mk61:beacon.table/page/software/buttons

## apply mask of the ui shape -> if you are still on the same page!
execute if score @s prd.ironman.beacon.editor.page matches 4 run function mk61:beacon.table/page/software/mask