execute unless block ~ ~ ~ barrel unless score @s prd.id = @s prd.id run function mk61:beacon.table/init
execute unless block ~ ~ ~ barrel if score @s prd.id = @s prd.id run return run function mk61:beacon.table/broken
execute unless block ~ ~ ~ barrel[open=true] run particle dust{color:[1.0,0.0,0.0],scale:1} ~ ~1.1 ~ 0 0 0 1 1
execute if block ~ ~ ~ barrel[open=true] if score @s prd.id = @s prd.id run return run function mk61:beacon.table/opened