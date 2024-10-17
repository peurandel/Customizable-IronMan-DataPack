scoreboard players operation %range prd.num *= #4 prd.num
scoreboard players operation %range prd.num /= #10 prd.num

#test
execute as @e[tag=prd.this] run function mk61:player/suit/skill/5_cut
execute summon armor_stand at @s run function mk61:player/suit/skill/5_2_1
