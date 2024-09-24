setblock ~ ~ ~ barrel{CustomName:'{"text":"Suit Editor"}'}
scoreboard players set @s prd.ironman.beacon.editor.page 0
function mk61:beacon.table/ui/0
execute store result score @s prd.id run scoreboard players add #prd.ironman.beacon.editor prd.id 1
