execute unless entity @e[tag=prd.view.target.this] run return run function mk61:player/suit/skill/slot/7/payback
particle crit ~ ~ ~ 1 1 1 1 100
particle squid_ink ~ ~ ~ 1 1 1 1 50
execute at @e[tag=prd.view.target.this] run function mk61:player/suit/skill/slot/7/effect
damage @e[tag=prd.view.target.this,limit=1] 300 arrow by @s
