$execute store result score $temp cgn.dummy run data get entity @s $(slot_raw).components."minecraft:custom_data".cgn.charges
execute if score $temp cgn.dummy matches ..3 run advancement grant @s only cgn:gameplay/charge_emberlash
$item modify entity @s weapon.$(slot) cgn:emberlash/charge
scoreboard players remove @s cgn.electroplasm.current 10