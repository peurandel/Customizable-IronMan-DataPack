tag @s remove prd.ironman
$data modify storage prd:this item_data set from storage prd:db player.$(dummy).data
function mk61:player/suit/loot_item with storage prd:this
$data remove storage prd:db player.$(dummy).data
title @s actionbar {"text":"OFF!","color":"red"}
#갑옷 뱃기기
execute if items entity @s armor.head *[minecraft:custom_data~{suit:61}] run item replace entity @s armor.head with air
execute if items entity @s armor.chest *[minecraft:custom_data~{suit:61}] run item replace entity @s armor.chest with air
execute if items entity @s armor.legs *[minecraft:custom_data~{suit:61}] run item replace entity @s armor.legs with air
execute if items entity @s armor.feet *[minecraft:custom_data~{suit:61}] run item replace entity @s armor.feet with air

return 0