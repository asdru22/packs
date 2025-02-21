execute as @e[type=item_frame,distance=..7,tag=srn.item_frame_marker] at @s align xyz run function srn:entity/item_frame/process

scoreboard players reset @s srn.used_item_frame