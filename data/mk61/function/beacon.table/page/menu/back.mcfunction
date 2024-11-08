scoreboard players set @s prd.ironman.beacon.editor.page 0
summon item ~ ~1 ~ {Item:{id:beacon,components:{custom_data:{suit:0}}}}
data modify entity @e[limit=1,sort=nearest,nbt={Item:{components:{"minecraft:custom_data":{suit:0}}}},type=item] Item.components set from entity @s data.suit
scoreboard players set @s prd.ironman.beacon.editor.page 0
data remove entity @s data.suit