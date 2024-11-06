$data modify entity @s item set from storage prd:db player.$(dummy).data.minecraft:custom_data.data.suit.$(armor2)
data modify entity @s item.components.minecraft:custom_data.suit set value 61
data modify entity @s item.components.minecraft:max_damage set from storage prd:this item.cost_n
data modify entity @s item.components.minecraft:max_stack_size set value 1
data modify entity @s item.components.minecraft:damage set value 0
$item replace entity @a[tag=prd.player.this] armor.$(armor1) from entity @s container.0
kill @s