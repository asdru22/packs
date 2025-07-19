scoreboard players add @s cgn.electroplasm_carver.charges 1
scoreboard players set @s cgn.electroplasm_carver.timer 20
tag @s add cgn.electroplasm_carver.hit
tag @s remove cgn.electroplasm_carver.click

execute if score @s cgn.electroplasm_carver.charges matches 6.. run function cgn:item/electroplasm_carver/use/has_charges

execute positioned ~ ~1 ~ run particle minecraft:sweep_attack ^ ^ ^0.7
playsound minecraft:entity.player.attack.sweep player @s

data modify storage cgn:storage root.temp.item set from entity @s Inventory[{Slot:-106b}]
execute if entity @s[gamemode=!creative] run function cgn:technical/macros/damage_slot/main {slot:"weapon.offhand",amount:1}