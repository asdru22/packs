# Finishes the attack

playsound cgn:entity.peeper.attack hostile @a[distance=..16]
data remove storage cgn:temp root
data modify storage cgn:temp root.UUID set from entity @s UUID
tag @s add cgn.peeper_damage_source
# the actual attack
execute facing entity @n[predicate=cgn:entity_properties/hostile_target,distance=..16] eyes run function cgn:entity/peeper/summon_gloomstone_beam

execute as @n[predicate=cgn:entity_properties/hostile_target,distance=..16] at @s run function cgn:entity/peeper/attack_completed_target

tag @s remove cgn.peeper_damage_source
data modify entity @s wander_target set value [I;0,0,0]
execute store result entity @s wander_target[0] int 1 run data get storage cgn:temp root.pos[0]
execute store result entity @s wander_target[1] int 1 run data get storage cgn:temp root.pos[1]
execute store result entity @s wander_target[2] int 1 run data get storage cgn:temp root.pos[2]
