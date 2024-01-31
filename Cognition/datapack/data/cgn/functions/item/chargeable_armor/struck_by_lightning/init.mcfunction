execute as @e[type=minecraft:lightning_bolt] at @s as @e[type=#cgn:chargeable_armor,dx=0,predicate=cgn:entity/wearing/chargeable_armor/any] run function cgn:item/chargeable_armor/struck_by_lightning/as_struck_entity

say a

advancement revoke @s only cgn:technical/lightning_strike/chargeable_armor
