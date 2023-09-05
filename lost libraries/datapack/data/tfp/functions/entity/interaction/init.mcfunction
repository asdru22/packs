data remove storage tfp:storage root.temp.item
data modify storage tfp:storage root.temp.item set from entity @s SelectedItem
execute if entity @s[advancements={tfp:technical/interaction_entity={interact=true}}] run function tfp:entity/interaction/interact
execute if entity @s[advancements={tfp:technical/interaction_entity={attack=true}}] run function tfp:entity/interaction/attack
advancement revoke @s only tfp:technical/interaction_entity