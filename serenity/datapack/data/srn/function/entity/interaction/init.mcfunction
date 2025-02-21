data remove storage srn:storage root.temp.item
data modify storage srn:storage root.temp.item set from entity @s Inventory[{Slot:-106b}]
data modify storage srn:storage root.temp.item set from entity @s SelectedItem
execute if entity @s[advancements={srn:player_interacted_with_entity/interaction={attack=true}}] as @e[tag=srn.interaction,type=interaction,distance=..10] if data entity @s attack at @s run function srn:entity/interaction/attack
execute if entity @s[advancements={srn:player_interacted_with_entity/interaction={interact=true}}] as @e[tag=srn.interaction,type=interaction,distance=..10] if data entity @s interaction at @s run function srn:entity/interaction/interact
advancement revoke @s only srn:player_interacted_with_entity/interaction