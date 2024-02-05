execute as @e[type=item_display,distance=..7,tag=dsl.prevents_hoppers] at @s positioned ~ ~-1 ~ run function dsl:block/hopper_updating/fill
advancement revoke @s only dsl:technical/placed_block/hopper