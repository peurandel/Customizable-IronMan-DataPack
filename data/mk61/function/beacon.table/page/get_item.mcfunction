$data modify entity @s data.suit.minecraft:custom_data.data.$(str) append from block ~ ~ ~ Items[{Slot:$(Slot)b}].components.minecraft:custom_data
#$tellraw @a [{"text":"현재 $(Slot)슬롯 아이템 : "},{"nbt":"Items[{Slot:$(Slot)b}].components.minecraft:custom_data","block":"~ ~ ~"}]
#$tellraw @a [{"text":"담긴 결과값 : "},{"nbt":"data.suit.minecraft:custom_data.data.$(str)","entity":"@s"}]
