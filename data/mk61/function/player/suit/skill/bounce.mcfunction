scoreboard players remove %bounce prd.num 1

execute unless block ~0.5 ~ ~ air store result entity @s Rotation[0] float -1 run data get entity @s Rotation[0]
execute unless block ~-0.5 ~ ~ air store result entity @s Rotation[0] float -1 run data get entity @s Rotation[0]
execute unless block ~ ~0.5 ~ air store result entity @s Rotation[1] float -1 run data get entity @s Rotation[1]
execute unless block ~ ~-0.5 ~ air store result entity @s Rotation[1] float -1 run data get entity @s Rotation[1]
execute unless block ~ ~ ~0.5 air run function mk61:player/suit/skill/bounce2
execute unless block ~ ~ ~-0.5 air run function mk61:player/suit/skill/bounce2

$execute rotated as @s run function mk61:player/suit/skill/$(id)/main {damage:$(damage),id:$(id)}