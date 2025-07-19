execute if score @s[gamemode=!creative] cgn.electroplasm.current matches 50.. if predicate cgn:entity_properties/chargeable_armor/any run function cgn:item/electromodulator/use

execute if entity @s[gamemode=creative] run function cgn:item/electromodulator/use