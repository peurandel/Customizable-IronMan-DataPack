scoreboard players set .page_change prd.ui 0
## copy the Items array
data modify storage prd:this ui.container set from block ~ ~ ~ Items
## try to update the stored array...
execute store result score #temp prd.ui run data modify entity @s data.container set from storage prd:this ui.container
## if it updated, they are not the same so refresh the ui
execute if score #temp prd.ui matches 1 run function mk61:beacon.table/ui/refresh