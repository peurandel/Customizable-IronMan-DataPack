$execute unless block ~ ~ ~ barrel{Items:[{Slot:$(num)b}]} run return run data remove entity @s data.suit."minecraft:custom_data".data.suit.$(armor)
$data modify entity @s data.suit."minecraft:custom_data".data.suit.$(armor) set from block ~ ~ ~ Items[{Slot:$(num)b}]
$data modify entity @s data.suit."minecraft:custom_data".data.suit.armorcost[$(in_a)] set value [0,100]
#$say it's set armor! Slot is $(num)b. in_a is $(in_a). armor is $(armor)
