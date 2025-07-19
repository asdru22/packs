execute if entity @s[gamemode=!creative] if score @s cgn.electroplasm.current matches 10.. run function cgn:item/electroplasm_carver/use/has_electroplasm

execute if entity @s[gamemode=creative] run function cgn:item/electroplasm_carver/use/has_electroplasm

function cgn:item/electroplasm_carver/use/reset