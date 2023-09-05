particle minecraft:block redstone_block ~ ~ ~ 0 0.5 0 0.05 10 normal
execute if entity @s[type=#asy:undead] run function asy:commands/summon/scraper
execute if entity @s[type=#asy:flying] run function asy:commands/summon/flutterpillar
execute if entity @s[type=#asy:big] run function asy:commands/summon/bloater