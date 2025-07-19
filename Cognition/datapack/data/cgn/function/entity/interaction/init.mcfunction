data remove storage cgn:storage root.temp.item
data remove storage cgn:macro root


data modify storage cgn:storage root.temp.item set from entity @s Inventory[{Slot:-106b}]
data modify storage cgn:storage root.temp.item set from entity @s SelectedItem

execute store result storage cgn:macro root.range float 1 run attribute @s minecraft:entity_interaction_range get

function cgn:entity/interaction/macro with storage cgn:macro root

advancement revoke @s only cgn:technical/player_interacted_with_entity/interaction