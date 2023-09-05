execute if predicate asy:item/glass_visor run function #smithed.item:durability/damage/helmet
execute if score @s asy.symbiote_id matches 1.. if score @s asy.symbiote_id = id asy.data run function asy:entity/symbiote/leech/as_player
execute unless score @s asy.symbiote_id matches 1.. run function asy:entity/symbiote/leech/as_player
execute if score @s asy.symbiote_id matches 1.. unless score @s asy.symbiote_id = .id asy.data run scoreboard players set .kill asy.data 1