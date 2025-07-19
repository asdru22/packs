execute as @e[type=minecraft:lightning_bolt] at @s as @e[type=#cgn:displays_armor,dx=0,predicate=cgn:entity_properties/chargeable_armor/any] run function cgn:item/chargeable_armor/struck_by_lightning/as_struck_entity

advancement revoke @s only cgn:technical/lightning_strike/chargeable_armor