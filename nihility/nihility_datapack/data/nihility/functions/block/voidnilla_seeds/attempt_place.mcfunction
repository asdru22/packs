stopsound @a[distance=..16] * entity.glow_item_frame.place
stopsound @a[distance=..16] * entity.glow_item_frame.add_item
scoreboard players reset temp nihility.data
execute as @e[type=glow_item_frame,distance=..10,tag=!nihility.setup,tag=nihility.block.voidnilla_seeds] at @s run function nihility:block/voidnilla_seeds/as_item_frame

execute if score temp nihility.data matches 1 run function nihility:block/voidnilla_seeds/invalid

advancement revoke @s only nihility:technical/block/interact/voidnilla_seeds_place