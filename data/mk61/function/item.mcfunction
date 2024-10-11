give @s minecraft:drowned_spawn_egg[entity_data={id:"minecraft:marker",Tags:["prd.ironman.beacon.table"]},minecraft:custom_name='{"text":"Suit Editor","color":"aqua"}'] 1
give @s minecraft:beacon[minecraft:custom_name='{"text":"MK61"}',minecraft:custom_data={prd.ironman:1,suit:61,data:{suit:{helmet:{},chestplate:{},leggings:{},boots:{}},software:{},energy:[[1000,1000],[1000,1000]],skill:[[{type:1,cost:[10,0],id:1,name:"Repulsor"},{type:1,cost:[20,0],id:2,name:UniBeam},{type:3,cost:[30,0],id:3,name:"Power Repulsor"}],[{type:22,cost:[5,0],id:2001,name:Booster},{type:21,cost:[0,100],id:2002,name:"Fly Boom"}],[],[],[],[],[],[]],tech:{}}},food={nutrition:0,can_always_eat:true,eat_seconds:2147483647,saturation:0}]

#Skill : {type, cost:[0,0],id,name}
##type : 1=attack

#item
give @s paper[minecraft:custom_data={tech:1,suit:61,id:1,name:"Repulsor"}]
give @s paper[minecraft:custom_data={tech:1,suit:61,id:2,name:"Unibeam"}]
give @s paper[minecraft:custom_data={tech:1,suit:61,id:3,name:"Power Repulsor"}]
give @s paper[minecraft:custom_data={tech:1,suit:61,id:2001,name:"Fly Booster"}]
give @s paper[minecraft:custom_data={tech:1,suit:61,id:2002,name:"Fly Boom"}]