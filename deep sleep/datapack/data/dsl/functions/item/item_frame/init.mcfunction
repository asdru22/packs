execute as @e[type=item_frame,distance=..7,tag=dsl.item_frame_marker] at @s align xyz run function dsl:item/item_frame/process

scoreboard players reset @s dsl.place_item_frame