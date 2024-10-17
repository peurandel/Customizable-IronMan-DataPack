#파티클
particle minecraft:end_rod ~ ~ ~ .1 .1 .1 0 1 force @a
execute unless block ^ ^ ^0.3 #air run particle minecraft:explosion ~ ~ ~ .01 .01 .01 0 6 force @a

scoreboard players add %range prd.num 1
execute unless block ~ ~ ~ #air run return run function mk61:player/suit/skill/5_2

$execute if score %range prd.num matches ..250 if block ~ ~ ~ #air positioned ^ ^ ^0.4 run function mk61:player/suit/skill/5_1 {id:$(id)}
