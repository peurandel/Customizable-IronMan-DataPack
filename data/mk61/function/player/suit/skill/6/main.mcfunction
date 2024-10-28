tag @s add prd.entity.this
execute store result storage prd:this entity.explosion int 1 run scoreboard players get @s prd.this
execute as @e[tag=!prd.entity.this,distance=..3] unless score @s prd.id = @e[tag=prd.entity.this,limit=1] prd.id run function mk61:player/suit/skill/6/detected with storage prd:this entity
tag @s remove prd.entity.this