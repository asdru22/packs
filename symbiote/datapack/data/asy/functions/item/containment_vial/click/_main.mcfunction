execute if predicate asy:item/containment_vial_full/scraper run function asy:item/containment_vial/click/scraper
execute if predicate asy:item/containment_vial_full/flutterpillar run function asy:item/containment_vial/click/flutterpillar
execute if predicate asy:item/containment_vial_full/flutterfly run function asy:item/containment_vial/click/flutterfly
execute if predicate asy:item/containment_vial_full/bloater run function asy:item/containment_vial/click/bloater

execute if score @s asy.symbiote < @s asy.max_symbiote run loot give @s loot asy:item/containment_vial