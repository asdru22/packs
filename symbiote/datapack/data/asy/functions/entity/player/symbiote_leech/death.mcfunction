execute store result score .keepInv asy.data run gamerule keepInventory
execute if score .keepInv asy.data matches 1 run function asy:entity/player/symbiote_leech/no_symbiote
execute if score .keepInv asy.data matches 0 as @e[type=item,nbt={Item:{tag:{Unbreakable:1b,HideFlags:127}}}] if data entity @s Item.tag.asy.OldHelmet run data modify entity @s Item set from entity @s Item.tag.asy.OldHelmet

advancement revoke @s only asy:technical/player/die_with_symbiotes
scoreboard players reset @s asy.symbiote
scoreboard players set @s asy.max_symbiote 0
scoreboard players reset @s asy.symbiote_id

tag @s remove asy.symbiote.ignore