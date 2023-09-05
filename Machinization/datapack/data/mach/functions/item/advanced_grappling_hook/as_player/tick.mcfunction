scoreboard players operation $id mach.data = @s mach.data

execute if entity @s[tag=!mach.use_adv] run function mach:item/advanced_grappling_hook/as_player/init
tag @s add mach.use_adv
tag @s add mach.me
execute as @e[type=marker,tag=mach.hook_pos] run function mach:item/advanced_grappling_hook/as_marker/face
tag @s remove mach.me