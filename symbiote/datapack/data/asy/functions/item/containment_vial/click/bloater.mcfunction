scoreboard players set .id asy.data 4
execute if predicate asy:player/sneaking run function asy:commands/summon/bloater
execute unless predicate asy:player/sneaking unless predicate asy:item/glass_visor run function asy:item/containment_vial/click/replace_head/main
execute if score @s asy.symbiote < @s asy.max_symbiote run clear @s warped_fungus_on_a_stick{asy:{VialEntity:"asy:bloater"}} 1