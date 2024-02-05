############################################################
# Commands to run tickly for pottery tables that just closed
############################################################

tag @s remove dsl.the_hex.open
stopsound @a[distance=..16] block block.barrel.close
execute as @a[tag=dsl.inside_the_hex_gui,distance=..10] at @s unless entity @e[type=item_display,tag=dsl.the_hex.open,distance=..10] run tag @s remove dsl.inside_the_hex_gui
data remove block ~ ~ ~ Items[{Slot:16b}]