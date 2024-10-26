
tag @s add prd.ironman.fly
summon marker ~ ~ ~ {Tags:[prd.entity.flycore,prd.this.check]}
scoreboard players operation @e[tag=prd.entity.flycore,tag=prd.this.check,limit=1] prd.id = @s prd.id
rotate @e[tag=prd.entity.flycore,tag=prd.this.check,limit=1] ~ ~
tag @e[tag=prd.entity.flycore,tag=prd.this.check] remove prd.this.check