data modify storage asy:storage root.temp.item set from entity @s Inventory[{Slot:103b}].tag.asy.OldHelmet
scoreboard players set @s asy.symbiote_id 3

execute if data entity @s Inventory[{Slot:103b}].tag.asy.OldHelmet run function asy:entity/player/symbiote_leech/has_helmet
execute unless data entity @s Inventory[{Slot:103b}].tag.asy.OldHelmet run function asy:entity/player/symbiote_leech/no_helmet

advancement revoke @s only asy:technical/player/eat_spider_eye