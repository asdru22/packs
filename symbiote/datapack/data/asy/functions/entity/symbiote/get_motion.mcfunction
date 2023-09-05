scoreboard players operation .id asy.data = @s asy.symbiote_id
execute store result score .motionX asy.data run data get entity @s Motion[0] 10000
execute store result score .motionZ asy.data run data get entity @s Motion[2] 10000
execute if predicate asy:entity/symbiote_charge run function asy:entity/symbiote/leech/found_player