give @s minecraft:drowned_spawn_egg[entity_data={id:"minecraft:marker",Tags:["prd.ironman.beacon.table"]},minecraft:custom_name='{"text":"Suit Editor","color":"aqua"}'] 1
give @s minecraft:iron_golem_spawn_egg[entity_data={id:"minecraft:marker",Tags:["prd.ironman.orbit.table"]},minecraft:custom_name='{"text":"Orbit Editor","color":"aqua"}'] 1

give @s minecraft:beacon[minecraft:custom_name='{"text":"MK61"}',minecraft:custom_data={data:{energy:[[I;1000,1000],[I;1400,1000]],offslot:8,skill:[[{damage:5,energy:[I;0,10],id:1,name:"Repulsor",skill:1,suit:61},{damage:10,energy:[I;0,20],id:2,name:"Unibeam",skill:1,suit:61},{damage:20,energy:[I;0,30],id:3,name:"Power Repulsor",skill:1,suit:61}],[{cost:[I;5,0],id:2001,name:"Booster",type:22},{cost:[I;0,100],id:2002,name:"Fly Boom",type:21}],[{energy:[I;25,25],id:4,name:"Missile",skill:1,suit:61},{energy:[I;0,10],id:5,name:"Chain Grab",skill:1,suit:61}],[{energy:[I;10,20],explosion:7,id:6,name:"Trap",skill:1,suit:61},{damage:300,energy:[I;100,200],id:7,name:"Kinetic Blast",skill:1,suit:61,view:1}],[],[],[],[]],software:{},suit:{armorcost:[[I;0,480],[I;0,560],[I;0,600],[I;0,410]],boots:{Slot:22b,components:{"minecraft:dyed_color":{rgb:11546150},"minecraft:trim":{material:"minecraft:gold",pattern:"minecraft:eye"}},count:1,id:"minecraft:leather_boots"},chestplate:{Slot:18b,components:{"minecraft:dyed_color":{rgb:11546150},"minecraft:trim":{material:"minecraft:diamond",pattern:"minecraft:wild"}},count:1,id:"minecraft:leather_chestplate"},helmet:{Slot:9b,components:{"minecraft:profile":{id:[I;2094724887,-592160942,-1815313150,-850992366],properties:[{name:"textures",value:"e3RleHR1cmVzOntTS0lOOnt1cmw6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTE2NzczMGY0NTZkOTMwY2U0YTAzMTkyNjZiZTI4MTk2MGQwODJmZGM0NTM2ZTQ5MTVlNWNlYjU2NjAzZWZhNiJ9fX0="}]}},count:1,id:"minecraft:player_head"},leggings:{Slot:13b,components:{"minecraft:dyed_color":{rgb:11546150},"minecraft:trim":{material:"minecraft:gold",pattern:"minecraft:tide"}},count:1,id:"minecraft:leather_leggings"}},tech:[{id:1,suit:61,tech:1},{id:2,suit:61,tech:1,value:1},{id:3,suit:61,tech:1,value:1},{id:4,suit:61,tech:1}]},prd.ironman:1,suit:61},minecraft:consumable={consume_seconds:0,animation:none}]

#Skill : {type, cost:[0,0],id,name}
##type : 1=attack

#item

give @s paper[minecraft:custom_data={tech:1,suit:61,id:1}]
give @s paper[minecraft:custom_data={tech:1,suit:61,id:2,value:1}]
give @s paper[minecraft:custom_data={tech:1,suit:61,id:3,value:1}]
give @s paper[minecraft:custom_data={tech:1,suit:61,id:4}]

give @s paper[minecraft:custom_data={skill:1,suit:61,id:1,name:"Repulsor",energy:[0,10],damage:5}]
give @s paper[minecraft:custom_data={skill:1,suit:61,id:2,name:"Unibeam",energy:[0,20],damage:10}]
give @s paper[minecraft:custom_data={skill:1,suit:61,id:3,name:"Power Repulsor",energy:[0,30],damage:20}]
give @s paper[minecraft:custom_data={skill:1,suit:61,id:2001,name:"Fly Booster",energy:[0,4]}]
give @s paper[minecraft:custom_data={skill:1,suit:61,id:2002,name:"Fly Boom",energy:[10,0]}]
give @s paper[minecraft:custom_data={skill:1,suit:61,id:4,name:"Missile",energy:[25,25]}]
give @s paper[minecraft:custom_data={skill:1,suit:61,id:5,name:"Chain Grab",energy:[0,10]}]
give @s paper[minecraft:custom_data={skill:1,suit:61,id:6,name:"Trap",energy:[10,20],explosion:7}]
give @s paper[minecraft:custom_data={skill:1,suit:61,id:7,name:"Kinetic Blast",energy:[100,200],damage:300,view:1}]
