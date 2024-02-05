############################################################
# Tags the player if they've entered a pottery table
############################################################

tag @s add dsl.inside_the_hex_gui
stopsound @a[distance=..16] block block.barrel.open

# Fix the edge case bug if the barrel was stuck in the closed state
execute as @e[type=item_display,distance=..7,tag=dsl.the_hex] at @s if block ~ ~ ~ minecraft:barrel[open=false] run function dsl:block/the_hex/open
advancement revoke @s only dsl:technical/item_used_on_block/open_the_hex