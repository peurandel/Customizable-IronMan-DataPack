## count items in the ui, if zero ignore buttons
execute store result score .items prd.ui run data get storage prd:this ui.container
execute if score .items prd.ui matches 0 run scoreboard players set .page_change prd.ui 1

## load the page you are on
#tellraw @a {"score": {"name": "@s","objective": "prd.ironman.beacon.editor.page"}}
scoreboard players add @s prd.ironman.beacon.editor.page 0
execute if score @s prd.ironman.beacon.editor.page matches 0 run function mk61:beacon.table/page/root/start
execute if score @s prd.ironman.beacon.editor.page matches 1 run function mk61:beacon.table/page/menu/start
execute if score @s prd.ironman.beacon.editor.page matches 2 run function mk61:beacon.table/page/tech/start
execute if score @s prd.ironman.beacon.editor.page matches 3 run function mk61:beacon.table/page/skill/start
execute if score @s prd.ironman.beacon.editor.page matches 3010..3018 run function mk61:beacon.table/page/skillslot/start
execute if score @s prd.ironman.beacon.editor.page matches 4 run function mk61:beacon.table/page/software/start
execute if score @s prd.ironman.beacon.editor.page matches 5 run function mk61:beacon.table/page/armor/start

## prevent double checks
data modify entity @s data.container set from block ~ ~ ~ Items
