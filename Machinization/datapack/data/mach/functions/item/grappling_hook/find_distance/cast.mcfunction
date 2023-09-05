scoreboard players add $strength delta.api.launch 3400
scoreboard players remove $steps mach.data 1
execute if score $steps mach.data matches 1.. positioned ^ ^ ^1 unless entity @e[type=marker,tag=face_me,distance=..1] run function mach:item/grappling_hook/find_distance/cast