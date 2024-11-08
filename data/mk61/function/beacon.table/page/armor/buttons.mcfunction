
## set button based on what was taken.
# intermediate variable avoid multiple inputs here!
scoreboard players set .button prd.ui 0
execute unless data storage prd:this ui.container[{Slot:0b}] run scoreboard players set .button prd.ui 1
execute unless data storage prd:this ui.container[{Slot:1b}] run scoreboard players set .button prd.ui 2
# armor
execute unless data storage prd:this ui.container[{components:{"minecraft:custom_data":{ui_item:{button:5010}}}}] run function mk61:beacon.table/page/armor/set_armor {num:9,armor:helmet,in_a:3}
execute unless data storage prd:this ui.container[{components:{"minecraft:custom_data":{ui_item:{button:5011}}}}] run function mk61:beacon.table/page/armor/set_armor {num:13,armor:leggings,in_a:1}
execute unless data storage prd:this ui.container[{components:{"minecraft:custom_data":{ui_item:{button:5012}}}}] run function mk61:beacon.table/page/armor/set_armor {num:18,armor:chestplate,in_a:2}
execute unless data storage prd:this ui.container[{components:{"minecraft:custom_data":{ui_item:{button:5013}}}}] run function mk61:beacon.table/page/armor/set_armor {num:22,armor:boots,in_a:0}

execute unless block ~ ~ ~ barrel{Items:[{components:{"minecraft:custom_data":{ui_item:{button:5020}}}}]} run function mk61:beacon.table/page/armor/dura_down {armor:3}
execute unless block ~ ~ ~ barrel{Items:[{components:{"minecraft:custom_data":{ui_item:{button:5021}}}}]} run function mk61:beacon.table/page/armor/dura_down {armor:2}
execute unless block ~ ~ ~ barrel{Items:[{components:{"minecraft:custom_data":{ui_item:{button:5022}}}}]} run function mk61:beacon.table/page/armor/dura_down {armor:1}
execute unless block ~ ~ ~ barrel{Items:[{components:{"minecraft:custom_data":{ui_item:{button:5023}}}}]} run function mk61:beacon.table/page/armor/dura_down {armor:0}

execute unless block ~ ~ ~ barrel{Items:[{components:{"minecraft:custom_data":{ui_item:{button:5030}}}}]} run function mk61:beacon.table/page/armor/dura_up {armor:3}
execute unless block ~ ~ ~ barrel{Items:[{components:{"minecraft:custom_data":{ui_item:{button:5031}}}}]} run function mk61:beacon.table/page/armor/dura_up {armor:2}
execute unless block ~ ~ ~ barrel{Items:[{components:{"minecraft:custom_data":{ui_item:{button:5032}}}}]} run function mk61:beacon.table/page/armor/dura_up {armor:1}
execute unless block ~ ~ ~ barrel{Items:[{components:{"minecraft:custom_data":{ui_item:{button:5033}}}}]} run function mk61:beacon.table/page/armor/dura_up {armor:0}

data remove storage prd:this ui.container
## pick a page to go to

execute if score .button prd.ui matches 1 run function mk61:beacon.table/page/software/back
execute if score .button prd.ui matches 2 run scoreboard players set @s prd.ironman.beacon.editor.page 1

execute unless score @s prd.ironman.beacon.editor.page matches 5 run scoreboard players set .page_change prd.ui 1
execute unless score @s prd.ironman.beacon.editor.page matches 5 run function mk61:beacon.table/ui/refresh