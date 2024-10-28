tag @s add prd.owner.this
execute as @e[tag=prd.caddle] if score @s prd.id = @e[tag=prd.owner.this,limit=1] prd.id run tag @s add prd.kill
execute as @e[tag=prd.test] if score @s prd.id = @e[tag=prd.owner.this,limit=1] prd.id run tag @s add prd.kill

kill @e[tag=prd.kill]
tag @s remove prd.owenr.this
