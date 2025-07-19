execute if entity @s[tag=!cgn.electroplasm_carver] run function cgn:item/electroplasm_carver/hold
execute if entity @s[scores={cgn.damage_dealt=1..}] run function cgn:item/electroplasm_carver/damage
execute if entity @s[scores={cgn.electroplasm_carver.timer=1..}] run function cgn:item/electroplasm_carver/use/tick