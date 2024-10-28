execute as @s[scores={prd.ironman.energy=200..}] run return run summon tnt ~ ~ ~
execute unless block ^ ^ ^0.3 #air run return run summon tnt ~ ~ ~
execute if score @s prd.target matches 0 unless score @s prd.id = @e[tag=!prd.this,limit=1,distance=..0.3] prd.id run return run summon tnt ~ ~ ~
execute unless score @s prd.target matches 0 unless score @s prd.target = @e[tag=!prd.this,limit=1,distance=..0.3] prd.id run return run summon tnt ~ ~ ~
