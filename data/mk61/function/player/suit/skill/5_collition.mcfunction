tp @e[tag=snbsaddle] @e[tag=snbarmbeforetemp,limit=1]

scoreboard players set @e[tag=snbtemp,limit=1] snbarmvelocity 0

execute at @e[tag=snbtemp] facing entity @e[tag=snbsaddle,limit=1] feet run tp @e[tag=snbtemp] ~ ~ ~ ~ ~
