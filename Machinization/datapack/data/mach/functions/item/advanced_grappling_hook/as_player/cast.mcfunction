scoreboard players remove $dist mach.data 1
particle smoke ~ ~ ~
# out of loop
execute positioned ^ ^ ^0.5 unless block ~ ~ ~ #mach:passable run function mach:item/advanced_grappling_hook/as_marker/set
execute if score $dist mach.data matches 1.. positioned ^ ^ ^0.5 if block ~ ~ ~ #mach:passable run function mach:item/advanced_grappling_hook/as_player/cast