execute store result score $rng mach.data run loot spawn ~ ~ ~ loot mach:technical/rng/7
scoreboard players remove $splits mach.data 1
execute if score $rng mach.data matches 1 rotated ~9 ~-2 run function mach:item/thunderbuss/raycast/joint
execute if score $rng mach.data matches 2 rotated ~-13 ~-5 run function mach:item/thunderbuss/raycast/joint
execute if score $rng mach.data matches 3 rotated ~ ~9 run function mach:item/thunderbuss/raycast/joint
execute if score $rng mach.data matches 4 rotated ~-8 ~7 run function mach:item/thunderbuss/raycast/joint
execute if score $rng mach.data matches 5 rotated ~12 ~-7 run function mach:item/thunderbuss/raycast/joint
execute if score $rng mach.data matches 6 rotated ~7 ~-10 run function mach:item/thunderbuss/raycast/joint
execute if score $rng mach.data matches 7 rotated ~-10 ~4 run function mach:item/thunderbuss/raycast/joint