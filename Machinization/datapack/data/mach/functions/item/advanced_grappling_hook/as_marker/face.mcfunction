execute if score @s mach.data = $id mach.data run tag @s add mach.target
execute as @a[tag=mach.me] at @s facing entity @e[type=marker,tag=mach.hook_pos,tag=mach.target] eyes run function mach:item/advanced_grappling_hook/as_player/launch
tag @s remove mach.target