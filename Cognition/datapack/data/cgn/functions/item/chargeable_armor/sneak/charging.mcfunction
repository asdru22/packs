scoreboard players operation #temp cgn.dummy = @s cgn.sneak_time
scoreboard players operation #temp cgn.dummy %= #10 cgn.dummy
execute if score #temp cgn.dummy matches 5 run function cgn:item/chargeable_armor/sneak/lightning


execute if score @s cgn.sneak_time matches 100 run function cgn:item/chargeable_armor/sneak/charged_indicators