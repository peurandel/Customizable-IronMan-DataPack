$tag @e[scores={prd.id=$(id)}] add prd.this
$tag @e[scores={prd.id=$(id)}] add prd.entity.this

scoreboard players operation #prd.entity.this prd.ironman.flyspeed = @s prd.ironman.flyspeed

scoreboard players add @s prd.ironman.energy 1
function mk61:player/suit/skill/4/ray
tag @s remove prd.this
tag @e[tag=prd.entity.this] remove prd.entity.this
