kill @s
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{pane:1b}}}}]
summon item ~ ~ ~ {Item:{id:drowned_spawn_egg,components:{entity_data:{id:"minecraft:marker",Tags:["prd.ironman.beacon.table"]},custom_name:'{"text":"Suit Editor","color":"aqua"}'}}}
execute unless data entity @s data.suit.minecraft:custom_data.suit run return 0
summon item ~ ~ ~ {Item:{id:beacon,components:{custom_data:{suit:0}}}}
data modify entity @e[limit=1,sort=nearest,nbt={Item:{components:{"minecraft:custom_data":{suit:0}}}},type=item] Item.components set from entity @s data.suit
return 0
