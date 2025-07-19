execute if predicate cgn:entity_properties/chargeable_armor/boots run function cgn:item/chargeable_armor/modify/charge {slot:"feet"}
execute if predicate cgn:entity_properties/chargeable_armor/leggings run function cgn:item/chargeable_armor/modify/charge {slot:"legs"}
execute if predicate cgn:entity_properties/chargeable_armor/chestplate run function cgn:item/chargeable_armor/modify/charge {slot:"chest"}
execute if predicate cgn:entity_properties/chargeable_armor/helmet run function cgn:item/chargeable_armor/modify/charge {slot:"head"}

execute positioned ~ ~1 ~ run function cgn:item/chargeable_armor/struck_by_lightning/lightning