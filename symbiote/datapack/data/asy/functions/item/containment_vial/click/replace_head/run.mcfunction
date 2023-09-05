scoreboard players add @s asy.symbiote 1
execute if score @s asy.symbiote > @s asy.max_symbiote run function asy:entity/player/symbiote_leech/has_max_symbiotes
playsound asy:entity.symbiote.leech hostile @a[distance=..10] ~ ~ ~ 2 0.85
execute if data entity @s Inventory[{Slot:103b}].Count run function asy:entity/player/symbiote_leech/has_helmet
execute unless data entity @s Inventory[{Slot:103b}].Count run function asy:entity/player/symbiote_leech/no_helmet