#파티클
execute if score %range prd.num matches 8.. unless block ^ ^ ^1.6 #air at @s run return run function mk61:player/suit/skill/slot/5/set
execute if score %range prd.num matches 8.. if block ^ ^ ^1.6 #air at @s run tp @s ^ ^ ^1.6
execute if score %range prd.num matches 8.. if block ^ ^ ^1.6 #air at @s run particle minecraft:end_rod ~ ~ ~ .1 .1 .1 0 1 force @a
execute if score %range prd.num matches 8.. if block ^ ^ ^1.6 #air at @s run scoreboard players remove %range prd.num 8

execute if score %range prd.num matches 4.. unless block ^ ^ ^0.8 #air at @s run return run function mk61:player/suit/skill/slot/5/set
execute if score %range prd.num matches 4.. if block ^ ^ ^0.8 #air at @s run tp @s ^ ^ ^0.8
execute if score %range prd.num matches 4.. if block ^ ^ ^0.8 #air at @s run particle minecraft:end_rod ~ ~ ~ .1 .1 .1 0 1 force @a
execute if score %range prd.num matches 4.. if block ^ ^ ^0.8 #air at @s run scoreboard players remove %range prd.num 4

execute if score %range prd.num matches 2.. unless block ^ ^ ^0.4 #air at @s run return run function mk61:player/suit/skill/slot/5/set
execute if score %range prd.num matches 2.. if block ^ ^ ^0.4 #air at @s run tp @s ^ ^ ^0.4
execute if score %range prd.num matches 2.. if block ^ ^ ^0.4 #air at @s run particle minecraft:end_rod ~ ~ ~ .1 .1 .1 0 1 force @a
execute if score %range prd.num matches 2.. if block ^ ^ ^0.4 #air at @s run scoreboard players remove %range prd.num 2

execute if score %range prd.num matches 1.. unless block ^ ^ ^0.2 #air at @s run return run function mk61:player/suit/skill/slot/5/set
execute if score %range prd.num matches 1.. if block ^ ^ ^0.2 #air at @s run tp @s ^ ^ ^0.2
execute if score %range prd.num matches 1.. if block ^ ^ ^0.2 #air at @s run particle minecraft:end_rod ~ ~ ~ .1 .1 .1 0 1 force @a
execute if score %range prd.num matches 1.. if block ^ ^ ^0.2 #air at @s run scoreboard players remove %range prd.num 1

execute if score %range prd.num matches 1.. at @s run function mk61:player/suit/skill/slot/5/ray
