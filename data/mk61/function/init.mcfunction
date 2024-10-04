scoreboard objectives add prd.id dummy

scoreboard objectives add prd.this dummy
scoreboard objectives add prd.num dummy
scoreboard objectives add prd.ironman.energy dummy
scoreboard objectives add prd.ironman.nano dummy
scoreboard objectives add prd.ironman.max_energy dummy
scoreboard objectives add prd.ironman.max_nano dummy
scoreboard objectives add prd.ironman.triggered dummy
scoreboard objectives add prd.ironman.weardelay1 dummy
scoreboard objectives add prd.ironman.weardelay2 dummy

#beacon editor
scoreboard objectives add prd.ironman.beacon.editor.page dummy
scoreboard objectives add prd.ironman.beacon.editor.ui dummy

#score set
scoreboard players set #100 prd.num 100

#Stroage
data modify storage prd:suit table set value {'1':'{"text":"Enable Flying"}','2':'{"text":"Infinity Energy Generating"}', '3':'{"text":"Infinity Nano Generating"}'}
