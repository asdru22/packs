# Plays death noises based on which mob it is

execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{cgn:{entity:"peeper"}}}}}] run playsound cgn:entity.peeper.death hostile @a[distance=..16]