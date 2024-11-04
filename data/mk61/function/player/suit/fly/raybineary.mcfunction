execute if score #prd.this2 prd.ironman.flyspeed matches 8.. at @s unless block ^ ^ ^1.6 #air as @e[tag=prd.ironman.fly.this] run return run function mk61:player/suit/fly/unfly
execute if score #prd.this2 prd.ironman.flyspeed matches 8.. at @s if block ^ ^ ^1.6 #air run tp @s ^ ^ ^1.6
execute if score #prd.this2 prd.ironman.flyspeed matches 8.. at @s if block ^ ^ ^1.6 #air run scoreboard players remove #prd.this2 prd.ironman.flyspeed 8

execute if score #prd.this2 prd.ironman.flyspeed matches 4.. at @s unless block ^ ^ ^0.8 #air as @e[tag=prd.ironman.fly.this] run return run function mk61:player/suit/fly/unfly
execute if score #prd.this2 prd.ironman.flyspeed matches 4.. at @s if block ^ ^ ^0.8 #air run tp @s ^ ^ ^0.8
execute if score #prd.this2 prd.ironman.flyspeed matches 4.. at @s if block ^ ^ ^0.8 #air run scoreboard players remove #prd.this2 prd.ironman.flyspeed 4

execute if score #prd.this2 prd.ironman.flyspeed matches 2.. at @s unless block ^ ^ ^0.4 #air as @e[tag=prd.ironman.fly.this] run return run function mk61:player/suit/fly/unfly
execute if score #prd.this2 prd.ironman.flyspeed matches 2.. at @s if block ^ ^ ^0.4 #air run tp @s ^ ^ ^0.4
execute if score #prd.this2 prd.ironman.flyspeed matches 2.. at @s if block ^ ^ ^0.4 #air run scoreboard players remove #prd.this2 prd.ironman.flyspeed 2

execute if score #prd.this2 prd.ironman.flyspeed matches 1.. at @s unless block ^ ^ ^0.2 #air as @e[tag=prd.ironman.fly.this] run return run function mk61:player/suit/fly/unfly
execute if score #prd.this2 prd.ironman.flyspeed matches 1.. at @s if block ^ ^ ^0.2 #air run tp @s ^ ^ ^0.2
execute if score #prd.this2 prd.ironman.flyspeed matches 1.. at @s if block ^ ^ ^0.2 #air run scoreboard players remove #prd.this2 prd.ironman.flyspeed 1

execute if score #prd.this2 prd.ironman.flyspeed matches 1.. at @s run function mk61:player/suit/fly/raybineary