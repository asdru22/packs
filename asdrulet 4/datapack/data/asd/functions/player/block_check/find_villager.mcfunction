execute as @e[type=villager,tag=asd.marker.right_click,tag=asd.v_setup] if score @s asd.id = t asd.d run function asd:player/block_check/remove_villager
tag @s remove asd.player.target_found