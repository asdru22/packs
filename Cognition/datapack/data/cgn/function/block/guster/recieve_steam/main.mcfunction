execute unless block ^ ^ ^1 #air run return fail
tag @s add cgn.guster_temp
execute positioned ^ ^ ^2 positioned ~-1.5 ~-1.5 ~-1.5 as @n[type=item_display,tag=cgn.bubble,dx=2,dz=2,dy=2] at @s on vehicle run function cgn:block/guster/recieve_steam/move_bubble

execute positioned ^ ^ ^1 run function cgn:block/guster/recieve_steam/block_interactions

tag @s remove cgn.guster_temp
particle gust ^ ^ ^0.66

scoreboard players set #temp_0 cgn.dummy 8
function cgn:block/guster/recieve_steam/loop