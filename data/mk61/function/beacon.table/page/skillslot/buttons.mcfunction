$data modify entity @s data.suit.minecraft:custom_data.data.skill[$(subnum)] set value []

$execute if items block ~ ~ ~ container.9 * run function mk61:beacon.table/page/skillslot/get_item {Slot:9b,arr:$(subnum)}
$execute if items block ~ ~ ~ container.10 * run function mk61:beacon.table/page/skillslot/get_item {Slot:10b,arr:$(subnum)}
$execute if items block ~ ~ ~ container.11 * run function mk61:beacon.table/page/skillslot/get_item {Slot:11b,arr:$(subnum)}
$execute if items block ~ ~ ~ container.12 * run function mk61:beacon.table/page/skillslot/get_item {Slot:12b,arr:$(subnum)}
$execute if items block ~ ~ ~ container.13 * run function mk61:beacon.table/page/skillslot/get_item {Slot:13b,arr:$(subnum)}
$execute if items block ~ ~ ~ container.14 * run function mk61:beacon.table/page/skillslot/get_item {Slot:14b,arr:$(subnum)}
$execute if items block ~ ~ ~ container.15 * run function mk61:beacon.table/page/skillslot/get_item {Slot:15b,arr:$(subnum)}
$execute if items block ~ ~ ~ container.16 * run function mk61:beacon.table/page/skillslot/get_item {Slot:16b,arr:$(subnum)}
$execute if items block ~ ~ ~ container.17 * run function mk61:beacon.table/page/skillslot/get_item {Slot:17b,arr:$(subnum)}
$execute if items block ~ ~ ~ container.18 * run function mk61:beacon.table/page/skillslot/get_item {Slot:18b,arr:$(subnum)}
$execute if items block ~ ~ ~ container.19 * run function mk61:beacon.table/page/skillslot/get_item {Slot:19b,arr:$(subnum)}
$execute if items block ~ ~ ~ container.20 * run function mk61:beacon.table/page/skillslot/get_item {Slot:20b,arr:$(subnum)}
$execute if items block ~ ~ ~ container.21 * run function mk61:beacon.table/page/skillslot/get_item {Slot:21b,arr:$(subnum)}
$execute if items block ~ ~ ~ container.22 * run function mk61:beacon.table/page/skillslot/get_item {Slot:22b,arr:$(subnum)}
$execute if items block ~ ~ ~ container.23 * run function mk61:beacon.table/page/skillslot/get_item {Slot:23b,arr:$(subnum)}
$execute if items block ~ ~ ~ container.24 * run function mk61:beacon.table/page/skillslot/get_item {Slot:24b,arr:$(subnum)}
$execute if items block ~ ~ ~ container.25 * run function mk61:beacon.table/page/skillslot/get_item {Slot:25b,arr:$(subnum)}
$execute if items block ~ ~ ~ container.26 * run function mk61:beacon.table/page/skillslot/get_item {Slot:26b,arr:$(subnum)}

## set button based on what was taken.
# intermediate variable avoid multiple inputs here!
scoreboard players set .button prd.ui 0
execute unless data storage prd:this ui.container[{Slot:0b}] run scoreboard players set .button prd.ui 1
execute unless data storage prd:this ui.container[{Slot:1b}] run scoreboard players set .button prd.ui 2
execute unless data storage prd:this ui.container[{Slot:2b}] run scoreboard players set .button prd.ui 3
data remove storage prd:this ui.container
## pick a page to go to

execute if score .button prd.ui matches 1 run function mk61:beacon.table/page/skillslot/back
execute if score .button prd.ui matches 2 run scoreboard players set @s prd.ironman.beacon.editor.page 1
execute if score .button prd.ui matches 3 run scoreboard players set @s prd.ironman.beacon.editor.page 3

execute unless score @s prd.ironman.beacon.editor.page matches 3010..3018 run scoreboard players set .page_change prd.ui 1
execute unless score @s prd.ironman.beacon.editor.page matches 3010..3018 run function mk61:beacon.table/ui/refresh