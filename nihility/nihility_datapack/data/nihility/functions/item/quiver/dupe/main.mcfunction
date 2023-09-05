data remove storage nihility:storage root.temp.check
data modify storage nihility:storage root.temp.item set from entity @s Inventory[{tag:{smithed:{id:"nihility:quiver"}}}]
execute store result score count nihility.data run clear @s #nihility:projectiles{smithed:{id:"nihility:quiver"}} 0
execute if score count nihility.data matches 2.. run function nihility:item/quiver/dupe/prevent_dupe

advancement revoke @s only nihility:technical/player/quiver_dupe