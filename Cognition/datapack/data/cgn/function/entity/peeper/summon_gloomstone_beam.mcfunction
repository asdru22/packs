data remove storage cgn:macro root
data modify storage cgn:macro root.owner set from entity @s UUID
scoreboard players add $distance cgn.dummy 40
execute store result storage cgn:macro root.dist float 0.05 run scoreboard players get $distance cgn.dummy
execute store result storage cgn:macro root.offset float 0.025 run scoreboard players get $distance cgn.dummy
execute store result storage cgn:macro root.yaw float 1 run data get entity @s Rotation[0]
execute store result storage cgn:macro root.pitch float -1 run data get entity @s Rotation[1]
execute anchored eyes positioned ^ ^ ^ run function cgn:entity/projectile/gloomstone_beam/summon with storage cgn:macro root