tag @s remove asd.setup
function asd:entity/mob/load_stats

data merge entity @s {ArmorDropChances:[-1000.0f,-1000.0f,-1000.0f,-1000.0f],HandDropChances:[-1000.0f,-1000.0f]}

# Assign a new id to the entity
execute if entity @s[tag=asd.ignore_id] run scoreboard players operation old asd.d = @s asd.id
execute store result score @s asd.id run scoreboard players add asd.id asd.id 1
scoreboard players operation @s asd.mob_id = @s asd.id
# Get bit 0
scoreboard players operation @s asd.id.0 = @s asd.id
scoreboard players operation @s asd.id.0 %= const.2 asd.d
scoreboard players operation @s asd.id /= const.2 asd.d
# Get bit 1
scoreboard players operation @s asd.id.1 = @s asd.id
scoreboard players operation @s asd.id.1 %= const.2 asd.d
scoreboard players operation @s asd.id /= const.2 asd.d
# Get bit 2
scoreboard players operation @s asd.id.2 = @s asd.id
scoreboard players operation @s asd.id.2 %= const.2 asd.d
scoreboard players operation @s asd.id /= const.2 asd.d
# Get bit 3
scoreboard players operation @s asd.id.3 = @s asd.id
scoreboard players operation @s asd.id.3 %= const.2 asd.d
scoreboard players operation @s asd.id /= const.2 asd.d
# Get bit 4
scoreboard players operation @s asd.id.4 = @s asd.id
scoreboard players operation @s asd.id.4 %= const.2 asd.d
scoreboard players operation @s asd.id /= const.2 asd.d
# Get bit 5
scoreboard players operation @s asd.id.5 = @s asd.id
scoreboard players operation @s asd.id.5 %= const.2 asd.d
scoreboard players operation @s asd.id /= const.2 asd.d
# Get bit 6
scoreboard players operation @s asd.id.6 = @s asd.id
scoreboard players operation @s asd.id.6 %= const.2 asd.d
scoreboard players operation @s asd.id /= const.2 asd.d
# Get bit 7
scoreboard players operation @s asd.id.7 = @s asd.id
scoreboard players operation @s asd.id.7 %= const.2 asd.d
scoreboard players operation @s asd.id /= const.2 asd.d
# Get bit 8
scoreboard players operation @s asd.id.8 = @s asd.id
scoreboard players operation @s asd.id.8 %= const.2 asd.d
scoreboard players operation @s asd.id /= const.2 asd.d
# Get bit 9
scoreboard players operation @s asd.id.9 = @s asd.id
scoreboard players operation @s asd.id.9 %= const.2 asd.d
scoreboard players operation @s asd.id /= const.2 asd.d
# Get bit 10
scoreboard players operation @s asd.id.10 = @s asd.id
scoreboard players operation @s asd.id.10 %= const.2 asd.d
scoreboard players operation @s asd.id /= const.2 asd.d
# Get bit 11
scoreboard players operation @s asd.id.11 = @s asd.id
scoreboard players operation @s asd.id.11 %= const.2 asd.d
scoreboard players operation @s asd.id /= const.2 asd.d
# Get bit 12
scoreboard players operation @s asd.id.12 = @s asd.id
scoreboard players operation @s asd.id.12 %= const.2 asd.d
scoreboard players operation @s asd.id /= const.2 asd.d
# Get bit 13
scoreboard players operation @s asd.id.13 = @s asd.id
scoreboard players operation @s asd.id.13 %= const.2 asd.d
scoreboard players operation @s asd.id /= const.2 asd.d
# Get bit 14
scoreboard players operation @s asd.id.14 = @s asd.id
scoreboard players operation @s asd.id.14 %= const.2 asd.d
scoreboard players operation @s asd.id /= const.2 asd.d
# Get bit 15
scoreboard players operation @s asd.id.15 = @s asd.id
scoreboard players operation @s asd.id.15 %= const.2 asd.d
scoreboard players operation @s asd.id /= const.2 asd.d
# Get bit 16
scoreboard players operation @s asd.id.16 = @s asd.id
scoreboard players operation @s asd.id.16 %= const.2 asd.d
scoreboard players operation @s asd.id /= const.2 asd.d
# Get bit 17
scoreboard players operation @s asd.id.17 = @s asd.id
scoreboard players operation @s asd.id.17 %= const.2 asd.d
scoreboard players operation @s asd.id /= const.2 asd.d
# Get bit 18
scoreboard players operation @s asd.id.18 = @s asd.id
scoreboard players operation @s asd.id.18 %= const.2 asd.d
scoreboard players operation @s asd.id /= const.2 asd.d
# Get bit 19
scoreboard players operation @s asd.id.19 = @s asd.id
scoreboard players operation @s asd.id.19 %= const.2 asd.d
scoreboard players operation @s asd.id /= const.2 asd.d
# Get bit 20
scoreboard players operation @s asd.id.20 = @s asd.id
scoreboard players operation @s asd.id.20 %= const.2 asd.d
scoreboard players operation @s asd.id /= const.2 asd.d
# Get bit 21
scoreboard players operation @s asd.id.21 = @s asd.id
scoreboard players operation @s asd.id.21 %= const.2 asd.d
scoreboard players operation @s asd.id /= const.2 asd.d
# Get bit 22
scoreboard players operation @s asd.id.22 = @s asd.id
scoreboard players operation @s asd.id.22 %= const.2 asd.d
scoreboard players operation @s asd.id /= const.2 asd.d
# Get bit 23
scoreboard players operation @s asd.id.23 = @s asd.id
scoreboard players operation @s asd.id.23 %= const.2 asd.d
scoreboard players operation @s asd.id /= const.2 asd.d
# Get bit 24
scoreboard players operation @s asd.id.24 = @s asd.id
scoreboard players operation @s asd.id.24 %= const.2 asd.d
scoreboard players operation @s asd.id /= const.2 asd.d
# Get bit 25
scoreboard players operation @s asd.id.25 = @s asd.id
scoreboard players operation @s asd.id.25 %= const.2 asd.d
scoreboard players operation @s asd.id /= const.2 asd.d
# Get bit 26
scoreboard players operation @s asd.id.26 = @s asd.id
scoreboard players operation @s asd.id.26 %= const.2 asd.d
scoreboard players operation @s asd.id /= const.2 asd.d
# Get bit 27
scoreboard players operation @s asd.id.27 = @s asd.id
scoreboard players operation @s asd.id.27 %= const.2 asd.d
scoreboard players operation @s asd.id /= const.2 asd.d
# Get bit 28
scoreboard players operation @s asd.id.28 = @s asd.id
scoreboard players operation @s asd.id.28 %= const.2 asd.d
scoreboard players operation @s asd.id /= const.2 asd.d
# Get bit 29
scoreboard players operation @s asd.id.29 = @s asd.id
scoreboard players operation @s asd.id.29 %= const.2 asd.d
scoreboard players operation @s asd.id /= const.2 asd.d
# Get bit 30
scoreboard players operation @s asd.id.30 = @s asd.id
scoreboard players operation @s asd.id.30 %= const.2 asd.d
scoreboard players operation @s asd.id /= const.2 asd.d
# Get sign bit
scoreboard players operation @s asd.id.31 = @s asd.id
scoreboard players operation @s asd.id.31 %= const.2 asd.d

scoreboard players operation @s asd.id = asd.id asd.id

execute if score @s asd.id.0 matches 0 run tag @s add asd.entity.mob.matching.nbit0
execute if score @s asd.id.0 matches 1 run tag @s add asd.entity.mob.matching.bit0
execute if score @s asd.id.1 matches 0 run tag @s add asd.entity.mob.matching.nbit1
execute if score @s asd.id.1 matches 1 run tag @s add asd.entity.mob.matching.bit1
execute if score @s asd.id.2 matches 0 run tag @s add asd.entity.mob.matching.nbit2
execute if score @s asd.id.2 matches 1 run tag @s add asd.entity.mob.matching.bit2
execute if score @s asd.id.3 matches 0 run tag @s add asd.entity.mob.matching.nbit3
execute if score @s asd.id.3 matches 1 run tag @s add asd.entity.mob.matching.bit3
execute if score @s asd.id.4 matches 0 run tag @s add asd.entity.mob.matching.nbit4
execute if score @s asd.id.4 matches 1 run tag @s add asd.entity.mob.matching.bit4
execute if score @s asd.id.5 matches 0 run tag @s add asd.entity.mob.matching.nbit5
execute if score @s asd.id.5 matches 1 run tag @s add asd.entity.mob.matching.bit5
execute if score @s asd.id.6 matches 0 run tag @s add asd.entity.mob.matching.nbit6
execute if score @s asd.id.6 matches 1 run tag @s add asd.entity.mob.matching.bit6
execute if score @s asd.id.7 matches 0 run tag @s add asd.entity.mob.matching.nbit7
execute if score @s asd.id.7 matches 1 run tag @s add asd.entity.mob.matching.bit7
execute if score @s asd.id.8 matches 0 run tag @s add asd.entity.mob.matching.nbit8
execute if score @s asd.id.8 matches 1 run tag @s add asd.entity.mob.matching.bit8
execute if score @s asd.id.9 matches 0 run tag @s add asd.entity.mob.matching.nbit9
execute if score @s asd.id.9 matches 1 run tag @s add asd.entity.mob.matching.bit9
execute if score @s asd.id.10 matches 0 run tag @s add asd.entity.mob.matching.nbit10
execute if score @s asd.id.10 matches 1 run tag @s add asd.entity.mob.matching.bit10
execute if score @s asd.id.11 matches 0 run tag @s add asd.entity.mob.matching.nbit11
execute if score @s asd.id.11 matches 1 run tag @s add asd.entity.mob.matching.bit11
execute if score @s asd.id.12 matches 0 run tag @s add asd.entity.mob.matching.nbit12
execute if score @s asd.id.12 matches 1 run tag @s add asd.entity.mob.matching.bit12
execute if score @s asd.id.13 matches 0 run tag @s add asd.entity.mob.matching.nbit13
execute if score @s asd.id.13 matches 1 run tag @s add asd.entity.mob.matching.bit13
execute if score @s asd.id.14 matches 0 run tag @s add asd.entity.mob.matching.nbit14
execute if score @s asd.id.14 matches 1 run tag @s add asd.entity.mob.matching.bit14
execute if score @s asd.id.15 matches 0 run tag @s add asd.entity.mob.matching.nbit15
execute if score @s asd.id.15 matches 1 run tag @s add asd.entity.mob.matching.bit15
execute if score @s asd.id.16 matches 0 run tag @s add asd.entity.mob.matching.nbit16
execute if score @s asd.id.16 matches 1 run tag @s add asd.entity.mob.matching.bit16
execute if score @s asd.id.17 matches 0 run tag @s add asd.entity.mob.matching.nbit17
execute if score @s asd.id.17 matches 1 run tag @s add asd.entity.mob.matching.bit17
execute if score @s asd.id.18 matches 0 run tag @s add asd.entity.mob.matching.nbit18
execute if score @s asd.id.18 matches 1 run tag @s add asd.entity.mob.matching.bit18
execute if score @s asd.id.19 matches 0 run tag @s add asd.entity.mob.matching.nbit19
execute if score @s asd.id.19 matches 1 run tag @s add asd.entity.mob.matching.bit19
execute if score @s asd.id.20 matches 0 run tag @s add asd.entity.mob.matching.nbit20
execute if score @s asd.id.20 matches 1 run tag @s add asd.entity.mob.matching.bit20
execute if score @s asd.id.21 matches 0 run tag @s add asd.entity.mob.matching.nbit21
execute if score @s asd.id.21 matches 1 run tag @s add asd.entity.mob.matching.bit21
execute if score @s asd.id.22 matches 0 run tag @s add asd.entity.mob.matching.nbit22
execute if score @s asd.id.22 matches 1 run tag @s add asd.entity.mob.matching.bit22
execute if score @s asd.id.23 matches 0 run tag @s add asd.entity.mob.matching.nbit23
execute if score @s asd.id.23 matches 1 run tag @s add asd.entity.mob.matching.bit23
execute if score @s asd.id.24 matches 0 run tag @s add asd.entity.mob.matching.nbit24
execute if score @s asd.id.24 matches 1 run tag @s add asd.entity.mob.matching.bit24
execute if score @s asd.id.25 matches 0 run tag @s add asd.entity.mob.matching.nbit25
execute if score @s asd.id.25 matches 1 run tag @s add asd.entity.mob.matching.bit25
execute if score @s asd.id.26 matches 0 run tag @s add asd.entity.mob.matching.nbit26
execute if score @s asd.id.26 matches 1 run tag @s add asd.entity.mob.matching.bit26
execute if score @s asd.id.27 matches 0 run tag @s add asd.entity.mob.matching.nbit27
execute if score @s asd.id.27 matches 1 run tag @s add asd.entity.mob.matching.bit27
execute if score @s asd.id.28 matches 0 run tag @s add asd.entity.mob.matching.nbit28
execute if score @s asd.id.28 matches 1 run tag @s add asd.entity.mob.matching.bit28
execute if score @s asd.id.29 matches 0 run tag @s add asd.entity.mob.matching.nbit29
execute if score @s asd.id.29 matches 1 run tag @s add asd.entity.mob.matching.bit29
execute if score @s asd.id.30 matches 0 run tag @s add asd.entity.mob.matching.nbit30
execute if score @s asd.id.30 matches 1 run tag @s add asd.entity.mob.matching.bit30
execute if score @s asd.id.31 matches 0 run tag @s add asd.entity.mob.matching.nbit31
execute if score @s asd.id.31 matches 1 run tag @s add asd.entity.mob.matching.bit31

execute if entity @s[tag=asd.ignore_id] run scoreboard players operation @s asd.id = old asd.d