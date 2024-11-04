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
scoreboard objectives add prd.ironman.flyspeed dummy
scoreboard objectives add prd.target dummy

#grab
scoreboard objectives add prd.length dummy
scoreboard objectives add prd.rotatey dummy
scoreboard objectives add prd.velocity dummy

#orbit editor
scoreboard objectives add prd.ui dummy
# for linking player to minecart
scoreboard objectives add prd.ui.id dummy

#beacon editor
scoreboard objectives add prd.ironman.beacon.editor.page dummy
scoreboard objectives add prd.ironman.beacon.editor.ui dummy
setblock 0 -64 0 yellow_shulker_box
#score set
scoreboard players set #3600 prd.num 3600
scoreboard players set #100 prd.num 100
scoreboard players set #57 prd.num 57
scoreboard players set #20 prd.num 20
scoreboard players set #10 prd.num 10
scoreboard players set #4 prd.num 4
scoreboard players set #3 prd.num 3
scoreboard players set #2 prd.num 2
scoreboard players set #gravity prd.num 98

execute positioned 0 0 0 run forceload add ~ ~
execute positioned 0 0 -1 run forceload add ~ ~
execute positioned -1 0 0 run forceload add ~ ~
execute positioned -1 0 -1 run forceload add ~ ~
#Stroage
data modify storage prd:suit table set value {tech:{ \
    '1': {"text":'{"text":"Enable Flying"}',"lore":'{"text":"make suit be able to fly!"}'},\
    '2':{"text":'{"text":"Infinity Energy Generating"}',"lore":'{"text":"Generating Energy eternity"}'}, \
    '3':{"text":'{"text":"Infinity Nano Generating"}',"lore":'{"text":"Generating Nano Particle eternity"}'}, \
    '4':{"text":'{"text":"Progressive Armor Frame"}',"lore":'{"text":"Give Player Resistance Effect V"}'}}, \
skill:{ \
    '1': {"text":'{"text":"Repulsor"}',"lore":"Blast Repulsor"}, \
    '2': {"text":'{"text":"Unibeam"}',"lore":"Blast Unibeam"}, \
    '3': {"text":'{"text":"Power Repulsor"}',"lore":"Best Repulsor"}, \
    '4': {"text":'{"text":"Missile"}',"lore":"Normal Missile"}, \
    '5': {"text":'{"text":"Chain Grab"}',"lore":"Chain Action"}, \
    '6': {"text":'{"text":"Trap"}',"lore":"Install Trap"}, \
    '7': {"text":'{"text":"Kinetic Blast"}',"lore":"Causing large damage to the target at a distance."}, \
    '8': {"text":'{"text":"Crushing Grip"}',"lore":"All enemies in the target area faint for few seconds, and receive little lasting damage."}, \
    '9': {"text":'{"text":"Chain Reaction"}',"lore":"Your attack causes general damage to the target and bounces at up to four additional targets around it, causing few damages to each."}, \
    '10': {"text":'{"text":"Energy Shift"}',"lore":"Racing towards the enemy, inflicting some damage on all enemies in the path."}, \
    '11': {"text":'{"text":"Apocalypse"}',"lore":"Nuclear Energy Blasting"}, \
    '2001': {"text":'{"text":"Booster"}',"lore":"Boosting Fly Speed"}, \
    '2002': {"text":'{"text":"Fly Boom"}',"lore":"Booming while flying"}}}
    
