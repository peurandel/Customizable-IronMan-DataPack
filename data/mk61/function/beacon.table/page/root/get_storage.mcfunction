scoreboard players set @s prd.ironman.beacon.editor.page 1
data modify entity @s data.suit set from block ~ ~ ~ Items[{Slot:13b}].components
execute unless data entity @s data.suit."minecraft:custom_data".data.suit.armorcost run data modify entity @s data.suit."minecraft:custom_data".data.suit.armorcost set value [[],[],[],[]]
data remove storage prd:this ui.container
#tellraw @a {"score": {"name": "@s","objective": "prd.ironman.beacon.editor.page"}}