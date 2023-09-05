function nihility:item/totem/abilities
execute if data storage nihility:storage root.temp.item.Slot run loot replace entity @s weapon.offhand loot nihility:technical/totem
execute unless data storage nihility:storage root.temp.item.Slot run loot replace entity @s weapon.mainhand loot nihility:technical/totem

execute store result score prev_health nihility.data run data get entity @s Health -1

data remove storage nihility:stroage root.temp.totem.active_effects
data modify storage nihility:stroage root.temp.totem.active_effects set from entity @s ActiveEffects 
effect clear @s
effect give @s instant_damage 1 25 true