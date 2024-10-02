execute if data storage prd:this {slot:8} run title @s actionbar [{"text":"Energy: "},{"score":{"objective":"prd.ironman.energy","name":"@s"}},{"text":"%"},{"text":" OFF","color":"red"},{"text":" Nano: "},{"score":{"objective":"prd.ironman.nano","name":"@s"}},{"text":"%"}]

$execute unless data storage prd:this {slot:8} run title @s actionbar [{"text":"Energy: "},{"score":{"objective":"prd.ironman.energy","name":"@s"}},{"text":"% "},{"nbt":"player.$(dummy).data.minecraft:custom_data.data.skill[$(slot)][0].name","storage":"prd:db","color":"green"},{"text":" Nano: "},{"score":{"objective":"prd.ironman.nano","name":"@s"}},{"text":"%"}]

