tag @s add prd.view.this

execute as @e[tag=!prd.view.this] at @a[tag=prd.view.this] facing entity @s feet positioned ^ ^ ^1 rotated as @a[tag=prd.view.this] positioned ^ ^ ^-1 if entity @a[tag=prd.view.this,distance=..0.1743] run tag @s add prd.view.target.this
execute at @e[tag=prd.view.target.this] run particle end_rod ~ ~2 ~ 0 0 0 0 0 force @s
tag @s remove prd.view.this