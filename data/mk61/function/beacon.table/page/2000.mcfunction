execute unless block ~ ~ ~ barrel{Items:[{components:{"minecraft:custom_data":{pane:1b,button:1}}}]} run function mk61:beacon.table/page/button/picksuit
execute unless block ~ ~ ~ barrel{Items:[{components:{"minecraft:custom_data":{pane:1b,button:2}}}]} run function mk61:beacon.table/page/button/panel
#입력한 기술 초기화 및 탐지
data remove entity @s data.suit.minecraft:custom_data.data.tech
execute if items block ~ ~ ~ container.9 * run function mk61:beacon.table/page/get_item {Slot:9b,str:tech}
execute if items block ~ ~ ~ container.10 * run function mk61:beacon.table/page/get_item {Slot:10b,str:tech}
execute if items block ~ ~ ~ container.11 * run function mk61:beacon.table/page/get_item {Slot:11b,str:tech}
execute if items block ~ ~ ~ container.12 * run function mk61:beacon.table/page/get_item {Slot:12b,str:tech}
execute if items block ~ ~ ~ container.13 * run function mk61:beacon.table/page/get_item {Slot:13b,str:tech}
execute if items block ~ ~ ~ container.14 * run function mk61:beacon.table/page/get_item {Slot:14b,str:tech}
execute if items block ~ ~ ~ container.15 * run function mk61:beacon.table/page/get_item {Slot:15b,str:tech}
execute if items block ~ ~ ~ container.16 * run function mk61:beacon.table/page/get_item {Slot:16b,str:tech}
execute if items block ~ ~ ~ container.17 * run function mk61:beacon.table/page/get_item {Slot:17b,str:tech}
execute if items block ~ ~ ~ container.18 * run function mk61:beacon.table/page/get_item {Slot:18b,str:tech}
execute if items block ~ ~ ~ container.19 * run function mk61:beacon.table/page/get_item {Slot:19b,str:tech}
execute if items block ~ ~ ~ container.20 * run function mk61:beacon.table/page/get_item {Slot:20b,str:tech}
execute if items block ~ ~ ~ container.21 * run function mk61:beacon.table/page/get_item {Slot:21b,str:tech}
execute if items block ~ ~ ~ container.22 * run function mk61:beacon.table/page/get_item {Slot:22b,str:tech}
execute if items block ~ ~ ~ container.23 * run function mk61:beacon.table/page/get_item {Slot:23b,str:tech}
execute if items block ~ ~ ~ container.24 * run function mk61:beacon.table/page/get_item {Slot:24b,str:tech}
execute if items block ~ ~ ~ container.25 * run function mk61:beacon.table/page/get_item {Slot:25b,str:tech}
execute if items block ~ ~ ~ container.26 * run function mk61:beacon.table/page/get_item {Slot:26b,str:tech}
