summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,active_effects:[{id:"invisibility",duration:100000,show_particles:false}],Tags:[prd.ironman.missile,prd.entity],ArmorItems:[{},{},{},{id:"minecraft:iron_block",count:1b}]}

#summon minecraft:cod ~ ~ ~ {NoGravity:1b,active_effects:[{id:"invisibility",duration:100000,show_particles:false}],Tags:[prd.ironman.missile,prd.entity],Passengers:[{id:"block_display",block_state:{Name:"iron_block"}}]}
tp @e[tag=prd.ironman.missile,tag=!imID,limit=1,sort=nearest] ^ ^ ^ ~ ~
scoreboard players operation @e[tag=prd.ironman.missile,tag=!imID] prd.id = @s prd.id
scoreboard players operation @e[tag=prd.ironman.missile,tag=!imID] prd.target = @s prd.target
scoreboard players set @e[tag=prd.ironman.missile,tag=!imID] prd.num 4 
tag @e[tag=prd.ironman.missile] add imID
