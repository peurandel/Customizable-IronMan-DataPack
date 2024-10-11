execute unless block ~ ~ ~ barrel{Items:[{components:{"minecraft:custom_data":{pane:1b,button:1}}}]} run function mk61:beacon.table/page/button/picksuit
execute unless block ~ ~ ~ barrel{Items:[{components:{"minecraft:custom_data":{pane:1b,button:2}}}]} run function mk61:beacon.table/page/button/panel
execute unless block ~ ~ ~ barrel{Items:[{components:{"minecraft:custom_data":{pane:1b,button:4}}}]} run function mk61:beacon.table/page/button/skill

data modify entity @s data.suit.minecraft:custom_data.data.skill[2] set value []
execute if items block ~ ~ ~ container.9 * run function mk61:beacon.table/page/get_item2 {Slot:9b,str:skill,arr:2}
execute if items block ~ ~ ~ container.10 * run function mk61:beacon.table/page/get_item2 {Slot:10b,str:skill,arr:2}
execute if items block ~ ~ ~ container.11 * run function mk61:beacon.table/page/get_item2 {Slot:11b,str:skill,arr:2}
execute if items block ~ ~ ~ container.12 * run function mk61:beacon.table/page/get_item2 {Slot:12b,str:skill,arr:2}
execute if items block ~ ~ ~ container.13 * run function mk61:beacon.table/page/get_item2 {Slot:13b,str:skill,arr:2}
execute if items block ~ ~ ~ container.14 * run function mk61:beacon.table/page/get_item2 {Slot:14b,str:skill,arr:2}
execute if items block ~ ~ ~ container.15 * run function mk61:beacon.table/page/get_item2 {Slot:15b,str:skill,arr:2}
execute if items block ~ ~ ~ container.16 * run function mk61:beacon.table/page/get_item2 {Slot:16b,str:skill,arr:2}
execute if items block ~ ~ ~ container.17 * run function mk61:beacon.table/page/get_item2 {Slot:17b,str:skill,arr:2}
execute if items block ~ ~ ~ container.18 * run function mk61:beacon.table/page/get_item2 {Slot:18b,str:skill,arr:2}
execute if items block ~ ~ ~ container.19 * run function mk61:beacon.table/page/get_item2 {Slot:19b,str:skill,arr:2}
execute if items block ~ ~ ~ container.20 * run function mk61:beacon.table/page/get_item2 {Slot:20b,str:skill,arr:2}
execute if items block ~ ~ ~ container.21 * run function mk61:beacon.table/page/get_item2 {Slot:21b,str:skill,arr:2}
execute if items block ~ ~ ~ container.22 * run function mk61:beacon.table/page/get_item2 {Slot:22b,str:skill,arr:2}
execute if items block ~ ~ ~ container.23 * run function mk61:beacon.table/page/get_item2 {Slot:23b,str:skill,arr:2}
execute if items block ~ ~ ~ container.24 * run function mk61:beacon.table/page/get_item2 {Slot:24b,str:skill,arr:2}
execute if items block ~ ~ ~ container.25 * run function mk61:beacon.table/page/get_item2 {Slot:25b,str:skill,arr:2}
execute if items block ~ ~ ~ container.26 * run function mk61:beacon.table/page/get_item2 {Slot:26b,str:skill,arr:2}

