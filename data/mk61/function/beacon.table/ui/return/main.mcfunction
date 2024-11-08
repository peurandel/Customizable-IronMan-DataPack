data remove block 0 -64 0 Items
data modify block 0 -64 0 Items set from storage prd:this ui.return
execute at @s run loot spawn ~ ~1 ~ mine 0 -64 0 stick[minecraft:custom_data={drop_contents:1b}]
