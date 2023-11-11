execute if score @s cgn.used_crossbow matches 1.. if predicate cgn:entity/holding/windup_crossbow run function cgn:item/windup_crossbow/use/tick

execute if score @s[tag=!cgn.charged_armor_jump] cgn.sneak_time matches 1.. run function cgn:item/chargeable_armor/sneak/sneak

execute if score @s cgn.air_time matches 1.. run function cgn:item/chargeable_armor/in_air/tick

advancement revoke @s[advancements={cgn:technical/using_item/shield=true}] only cgn:technical/using_item/shield