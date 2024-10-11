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
data modify storage prd:suit table set value {tech:{ \
    '1': {"text":'{"text":"Enable Flying"}',"lore":'{"text":"make suit be able to fly!"}'},\
    '2':{"text":'{"text":"Infinity Energy Generating"}',"lore":'{"text":"Generating Energy eternity"}'}, \
    '3':{"text":'{"text":"Infinity Nano Generating"}',"lore":'{"text":"Generating Nano Particle eternity"}'}}, \
skill:{ \
    '1': {"text":'{"text":"Repulsor"}',"lore":"Blast Repulsor"}, \
    '2': {"text":'{"text":"Unibeam"}',"lore":"Blast Unibeam"}, \
    '3': {"text":'{"text":"Power Repulsor"}',"lore":"Best Repulsor"}, \
    '2001': {"text":'{"text":"Booster"}',"lore":"Boosting Fly Speed"}, \
    '2002': {"text":'{"text":"Fly Boom"}',"lore":"Booming while flying"}}}
