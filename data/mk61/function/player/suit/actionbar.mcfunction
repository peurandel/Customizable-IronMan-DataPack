$execute if data storage prd:this {slot:$(offslot)} run title @s actionbar [{"text":"Energy: "},{"score":{"objective":"prd.ironman.energy","name":"#prd.this"}},{"text":"%"},{"text":" OFF","color":"red"},{"text":" Nano: "},{"score":{"objective":"prd.ironman.nano","name":"#prd.this"}},{"text":"%"}]

$execute unless data storage prd:this {slot:$(offslot)} run title @s actionbar [{"text":"Energy: "},{"score":{"objective":"prd.ironman.energy","name":"#prd.this"}},{"text":"% "},{"nbt":"player.$(dummy).data.minecraft:custom_data.data.skill[$(slot)][0].name","storage":"prd:db","color":"green"},{"text":" Nano: "},{"score":{"objective":"prd.ironman.nano","name":"#prd.this"}},{"text":"%"}]

