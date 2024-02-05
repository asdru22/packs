data remove storage dsl:storage root.temp.item
data modify storage dsl:storage root.temp.item set from entity @s Inventory[{Slot:-106b}]
data modify storage dsl:storage root.temp.item set from entity @s SelectedItem

scoreboard players operation $id dsl.dummy = @s dsl.dummy

execute if entity @s[advancements={dsl:technical/player_interacted_with_entity/interaction={interact=true}}] run function dsl:entity/interaction/interact
execute if entity @s[advancements={dsl:technical/player_interacted_with_entity/interaction={attack=true}}] run function dsl:entity/interaction/attack

advancement revoke @s only dsl:technical/player_interacted_with_entity/interaction