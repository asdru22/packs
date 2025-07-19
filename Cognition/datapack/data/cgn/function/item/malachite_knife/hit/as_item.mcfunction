execute if entity @s[tag=!cgn.malachite_knife.mindflare] run return run kill
execute if entity @s[scores={cgn.mindflare.piercing=1..}] run return run scoreboard players remove @s cgn.mindflare.piercing 1
kill @s