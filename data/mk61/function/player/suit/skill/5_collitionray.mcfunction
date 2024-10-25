#충돌감지
execute if entity @s[x_rotation=5..85] unless block ~ ~-1 ~ #snbarm:ignoreblock run function mk61:player/suit/skill/5_collitionray
#땅으로 와인딩
execute if entity @s[x_rotation=5..85] rotated ~ 0 unless block ^ ^ ^1 #snbarm:ignoreblock run function mk61:player/suit/skill/5_collition
execute if entity @s[x_rotation=5..85] rotated ~ 0 unless block ^-0.4 ^ ^1 #snbarm:ignoreblock run function mk61:player/suit/skill/5_collition
execute if entity @s[x_rotation=5..85] rotated ~ 0 unless block ^0.4 ^ ^1 #snbarm:ignoreblock run function mk61:player/suit/skill/5_collition
#일반 상태
execute unless entity @s[x_rotation=5..85] unless block ^ ^ ^1 #snbarm:ignoreblock run function mk61:player/suit/skill/5_collition
execute unless entity @s[x_rotation=5..85] unless block ^-0.4 ^ ^1 #snbarm:ignoreblock run function mk61:player/suit/skill/5_collition
execute unless entity @s[x_rotation=5..85] unless block ^0.4 ^ ^1 #snbarm:ignoreblock run function mk61:player/suit/skill/5_collition
execute unless block ~ ~1.75 ~ #snbarm:ignoreblock run function mk61:player/suit/skill/5_collition

execute facing entity @e[tag=snbsaddle] feet unless score @e[tag=snbtemp,limit=1] snbarmvelocity matches -10..10 if block ~ ~1.25 ~ #snbarm:ignoreblock if block ^ ^ ^1 #snbarm:ignoreblock unless entity @e[tag=snbsaddle,distance=..0.376] positioned ^ ^ ^0.75 run function mk61:player/suit/skill/5_collitionray