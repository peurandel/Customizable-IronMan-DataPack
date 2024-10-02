execute store result score @s prd.id run scoreboard players add prd.player.id prd.id 1
execute store result storage prd:this id int 1 run scoreboard players get @s prd.id
function mk61:player/init2 with storage prd:this
