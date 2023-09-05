particle cloud ~ ~ ~
execute as @e[type=#nihility:void_base,nbt={HurtTime:0s},limit=1,sort=nearest,distance=..2] at @s run function nihility:entity/player/dash/hit_mob
tag @s[scores={nihility.dash_timer=11}] remove nihility.is_dashing
execute if score hit nihility.data matches 1 run tag @s remove nihility.is_dashing