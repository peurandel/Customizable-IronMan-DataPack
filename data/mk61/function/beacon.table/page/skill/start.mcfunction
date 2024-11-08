## isolate items to be returned
data modify storage prd:this ui.return set from storage prd:this ui.container
data remove storage prd:this ui.return[{components:{"minecraft:custom_data":{ui_item:{}}}}]
# set the coords here to your shulker box!
function mk61:beacon.table/ui/return/start

## process what happened here
execute if score .page_change prd.ui matches 0 run function mk61:beacon.table/page/skill/buttons

## apply mask of the ui shape -> if you are still on the same page!
execute if score @s prd.ironman.beacon.editor.page matches 3 run function mk61:beacon.table/page/skill/mask