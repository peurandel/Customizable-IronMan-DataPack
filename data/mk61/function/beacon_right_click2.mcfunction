execute unless data storage prd:this techreader[0].id run return 0
$tellraw @s [{"text":""},{"text":"[","color":"aqua"},{"nbt":"table.tech.$(id).text","storage":"prd:suit","interpret":true,"color":"gray"},{"text":"]","color":"aqua"},{"text":" : "},{"nbt":"table.tech.$(id).lore","storage": "prd:suit","interpret":true}]
data remove storage prd:this techreader[0]
data modify storage prd:this id set from storage prd:this techreader[0].id
function mk61:beacon_right_click2 with storage prd:this