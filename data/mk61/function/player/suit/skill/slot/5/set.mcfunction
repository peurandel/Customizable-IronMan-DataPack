particle minecraft:explosion ~ ~ ~ .01 .01 .01 0 6 force @a

scoreboard players operation %range prd.num *= #4 prd.num
scoreboard players operation %range prd.num /= #10 prd.num

#test
execute as @e[tag=prd.this] run function mk61:player/suit/skill/slot/5/cut
execute summon armor_stand at @s run function mk61:player/suit/skill/slot/5/set2