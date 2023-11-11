execute if entity @s[predicate=!cgn:player/sneaking,scores={cgn.sneak_time=100..}] run function cgn:item/chargeable_armor/sneak/charged
scoreboard players reset @s[predicate=cgn:entity/wearing/chargeable_armor/reset] cgn.sneak_time
execute if predicate cgn:entity/wearing/chargeable_armor/charged run function cgn:item/chargeable_armor/sneak/charging