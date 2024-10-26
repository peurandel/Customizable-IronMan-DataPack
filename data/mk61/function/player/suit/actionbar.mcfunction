data modify storage prd:this actionbar set value [{"score":{"objective":"prd.ironman.energy","name":"#prd.this"},"color":"green"},{"text":"%"},{"text":" "},{"score":{"objective":"prd.ironman.nano","name":"#prd.this"},"color":"aqua"},{"text":"% ","color":"aqua"}]
$execute if data storage prd:this {slot:$(offslot)} run data modify storage prd:this actionbar append value {"text":"OFF","color":"red"}
$execute unless data storage prd:this {slot:$(offslot)} run data modify storage prd:this actionbar append value {"nbt":"player.$(dummy).data.minecraft:custom_data.data.skill[$(slot)][0].name","storage":"prd:db","color":"gray"}
execute as @s[tag=prd.ironman.fly] run data modify storage prd:this actionbar append value {"text":" "}
execute as @s[tag=prd.ironman.fly] run data modify storage prd:this actionbar append value {"score":{"objective":"prd.ironman.flyspeed","name":"#prd.this"},"color":"white"}
execute as @s[tag=prd.ironman.fly] run data modify storage prd:this actionbar append value {"text":"m/s","color":"white"}

title @s actionbar {"nbt":"actionbar","storage":"prd:this","interpret": true}