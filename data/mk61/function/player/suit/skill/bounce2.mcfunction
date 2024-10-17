scoreboard players set #temp prd.num 18000
execute store result score #temp1 prd.num run data get entity @s Rotation[0] 100.0
execute store result entity @s Rotation[0] float 0.01 run scoreboard players operation #temp prd.num -= #temp1 prd.num
