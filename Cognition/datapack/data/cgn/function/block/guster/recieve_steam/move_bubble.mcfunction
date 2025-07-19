execute rotated as @n[type=item_display,tag=cgn.guster_temp] positioned 0.0 0.0 0.0 positioned ^ ^ ^1 summon marker run function cgn:technical/math/resolve_vector
data modify entity @s Motion set from storage cgn:storage root.temp.motion

execute on passengers if entity @s[type=player]

execute on passengers on passengers if entity @s[type=player] run return run advancement grant @s only cgn:gameplay/move_bubble_with_guster

execute on passengers on passengers on passengers if entity @s[type=player] run return run advancement grant @s only cgn:gameplay/move_bubble_with_guster
