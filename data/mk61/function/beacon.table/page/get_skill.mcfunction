#테크 없으면 멈춰!
execute unless data entity @s data.this.suit[0] run return 0
#있으면?
loot insert ~ ~ ~ loot {"pools":[{"rolls":1,"entries":[{"type":"minecraft:item","name":"minecraft:paper"}]}]}
data modify block ~ ~ ~ Items[-1].components.minecraft:custom_data set from entity @s data.this.suit[0]
$data modify block ~ ~ ~ Items[-1].components.minecraft:custom_name set from storage prd:suit table.skill.'$(id)'.text
data remove entity @s data.this.suit[0]
function mk61:beacon.table/page/get_skill with entity @s data.this.suit[0]