execute unless block ^ ^ ^0.25 #air run scoreboard players reset @a[tag=prd.ironman.fly.this,limit=1,sort=nearest] prd.ironman.flyspeed
execute unless block ^ ^ ^0.25 #air run tag @a[tag=prd.ironman.fly.this,limit=1] remove prd.ironman.fly
execute unless block ^ ^ ^0.25 #air run kill @s
scoreboard players remove #prd.distance prd.this 1
execute if score #prd.distance prd.this matches 1.. positioned ^ ^ ^0.25 if block ~ ~ ~ #air run function mk61:player/suit/fly/collision