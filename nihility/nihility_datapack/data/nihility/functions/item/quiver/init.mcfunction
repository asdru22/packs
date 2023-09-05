data remove storage nihility:storage root.temp.check
data modify storage nihility:storage root.temp.item set from entity @s Inventory[{tag:{smithed:{id:"nihility:quiver"}}}]
execute store result score count nihility.data run clear @s bundle{smithed:{id:"nihility:quiver"}} 0
execute if score count nihility.data matches 1 run function nihility:item/quiver/projectile_check

execute if score count nihility.data matches 1 run function nihility:item/quiver/item_data
schedule function nihility:item/quiver/schedule 1t

#tellraw @s {"nbt":"SelectedItem.tag.nihility.QuiverItems","entity":"@s","color":"gold"}