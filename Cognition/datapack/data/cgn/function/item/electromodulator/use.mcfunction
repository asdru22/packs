execute if entity @s[gamemode=!creative] run function cgn:item/vanilla/warped_fungus_on_a_stick/damage
scoreboard players remove @s[gamemode=!creative] cgn.electroplasm.current 50
function cgn:item/chargeable_armor/struck_by_lightning/as_struck_entity

playsound cgn:item.electromodulator.use master @a[distance=..16]