#Init Setting
execute unless score @s prd.id = @s prd.id run function mk61:player/init
<<<<<<< HEAD
clear @s *[custom_data~{pane:1b}]
execute unless entity @s[tag=prd.ironman] run clear @s *[custom_data~{prd.suit.controller:1}]

execute store result storage prd:this dummy int 1 run attribute @s generic.luck modifier value get peurandel:key 38685626227668133590597632
execute as @s[tag=prd.ironman] run function mk61:player/suit/main with storage prd:this
=======
clear @a *[custom_data~{pane:1b}]

>>>>>>> 56f787096b5251e813b14210ed5e4269986b1d28
