item modify entity @s weapon.mainhand asy:remove_one
execute if entity @s[scores={asy.symbiote_id=1}] run loot give @s loot asy:item/containment_vial_full/scraper
execute if entity @s[scores={asy.symbiote_id=2}] run loot give @s loot asy:item/containment_vial_full/flutterpillar
execute if entity @s[scores={asy.symbiote_id=3}] run loot give @s loot asy:item/containment_vial_full/flutterfly
execute if entity @s[scores={asy.symbiote_id=4}] run loot give @s loot asy:item/containment_vial_full/bloater