data modify block 3000000 0 2014 Items[0].id set value "minecraft:leather_horse_armor"
execute if entity @s[scores={asy.symbiote_id=1}] run function asy:entity/scraper/helmet
execute if entity @s[scores={asy.symbiote_id=2}] run item modify block 3000000 0 2014 container.0 asy:symbiotes/flutterpillar
execute if entity @s[scores={asy.symbiote_id=3}] run item modify block 3000000 0 2014 container.0 asy:symbiotes/flutterfly
execute if entity @s[scores={asy.symbiote_id=4}] run item modify block 3000000 0 2014 container.0 asy:symbiotes/bloater