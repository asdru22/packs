data modify storage nihility:storage root.temp.list set value []
data modify storage nihility:storage root.temp.list append from entity @s Inventory[{tag:{smithed:{id:"nihility:quiver"}}}]
execute store result score slot nihility.data run data get storage nihility:storage root.temp.list[0].Slot
clear @s #nihility:projectiles{smithed:{id:"nihility:quiver"}}
data modify storage nihility:storage root.temp.item set from storage nihility:storage root.temp.list[0]

execute if score slot nihility.data matches 0 run loot replace entity @s container.0 loot nihility:item/quiver_nbt
execute if score slot nihility.data matches 1 run loot replace entity @s container.1 loot nihility:item/quiver_nbt
execute if score slot nihility.data matches 2 run loot replace entity @s container.2 loot nihility:item/quiver_nbt
execute if score slot nihility.data matches 3 run loot replace entity @s container.3 loot nihility:item/quiver_nbt
execute if score slot nihility.data matches 4 run loot replace entity @s container.4 loot nihility:item/quiver_nbt
execute if score slot nihility.data matches 5 run loot replace entity @s container.5 loot nihility:item/quiver_nbt
execute if score slot nihility.data matches 6 run loot replace entity @s container.6 loot nihility:item/quiver_nbt
execute if score slot nihility.data matches 7 run loot replace entity @s container.7 loot nihility:item/quiver_nbt
execute if score slot nihility.data matches 8 run loot replace entity @s container.8 loot nihility:item/quiver_nbt
execute if score slot nihility.data matches 9 run loot replace entity @s container.9 loot nihility:item/quiver_nbt
execute if score slot nihility.data matches 10 run loot replace entity @s container.10 loot nihility:item/quiver_nbt
execute if score slot nihility.data matches 11 run loot replace entity @s container.11 loot nihility:item/quiver_nbt
execute if score slot nihility.data matches 12 run loot replace entity @s container.12 loot nihility:item/quiver_nbt
execute if score slot nihility.data matches 13 run loot replace entity @s container.13 loot nihility:item/quiver_nbt
execute if score slot nihility.data matches 14 run loot replace entity @s container.14 loot nihility:item/quiver_nbt
execute if score slot nihility.data matches 15 run loot replace entity @s container.15 loot nihility:item/quiver_nbt
execute if score slot nihility.data matches 16 run loot replace entity @s container.16 loot nihility:item/quiver_nbt
execute if score slot nihility.data matches 17 run loot replace entity @s container.17 loot nihility:item/quiver_nbt
execute if score slot nihility.data matches 18 run loot replace entity @s container.18 loot nihility:item/quiver_nbt
execute if score slot nihility.data matches 19 run loot replace entity @s container.19 loot nihility:item/quiver_nbt
execute if score slot nihility.data matches 20 run loot replace entity @s container.20 loot nihility:item/quiver_nbt
execute if score slot nihility.data matches 21 run loot replace entity @s container.21 loot nihility:item/quiver_nbt
execute if score slot nihility.data matches 22 run loot replace entity @s container.22 loot nihility:item/quiver_nbt
execute if score slot nihility.data matches 23 run loot replace entity @s container.23 loot nihility:item/quiver_nbt
execute if score slot nihility.data matches 24 run loot replace entity @s container.24 loot nihility:item/quiver_nbt
execute if score slot nihility.data matches 25 run loot replace entity @s container.25 loot nihility:item/quiver_nbt
execute if score slot nihility.data matches 26 run loot replace entity @s container.26 loot nihility:item/quiver_nbt
execute if score slot nihility.data matches 27 run loot replace entity @s container.27 loot nihility:item/quiver_nbt
execute if score slot nihility.data matches 28 run loot replace entity @s container.28 loot nihility:item/quiver_nbt
execute if score slot nihility.data matches 29 run loot replace entity @s container.29 loot nihility:item/quiver_nbt
execute if score slot nihility.data matches 30 run loot replace entity @s container.30 loot nihility:item/quiver_nbt
execute if score slot nihility.data matches 31 run loot replace entity @s container.31 loot nihility:item/quiver_nbt
execute if score slot nihility.data matches 32 run loot replace entity @s container.32 loot nihility:item/quiver_nbt
execute if score slot nihility.data matches 33 run loot replace entity @s container.33 loot nihility:item/quiver_nbt
execute if score slot nihility.data matches 34 run loot replace entity @s container.34 loot nihility:item/quiver_nbt
execute if score slot nihility.data matches 35 run loot replace entity @s container.35 loot nihility:item/quiver_nbt
execute if score slot nihility.data matches -106 run loot replace entity @s weapon.offhand loot nihility:item/quiver_nbt

function nihility:item/quiver/hold_weapon/convert_to_arrow