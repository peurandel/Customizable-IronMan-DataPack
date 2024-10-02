advancement revoke @s only mk61:storage_right_click
execute as @s[tag=prd.ironman] run return run tellraw @s "You are already wearing the suit!"

tag @s add prd.ironman
<<<<<<< HEAD
execute store result storage prd:this dummy int 1 run attribute @s generic.luck modifier value get peurandel:key 38685626227668133590597632
=======
execute store result storage prd:this dummy int 1 run attribute Peurandel generic.luck modifier value get peurandel:key 38685626227668133590597632
>>>>>>> 56f787096b5251e813b14210ed5e4269986b1d28

#Save beacon data in the personal storage DB
function mk61:player/storage/set with storage prd:this

#Remove the beacon
item replace entity @s weapon.mainhand with air

tag @s add IronMan
