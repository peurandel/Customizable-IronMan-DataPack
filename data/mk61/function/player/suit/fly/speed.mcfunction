#이진 재귀 tp
execute store result score #prd.this2 prd.ironman.flyspeed run data get storage prd:this fly.speed 5
function mk61:player/suit/fly/raybineary

execute at @s run tp @a[tag=prd.player.this] ~ ~ ~

$execute at @s anchored eyes rotated as @e[tag=prd.player.this] positioned ^ ^ ^5 rotated as @s positioned ^ ^ ^$(rotate) facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~


#execute at @s rotated as @e[tag=prd.entity.flycore.this] run tp @s ~ ~ ~ ~ ~
