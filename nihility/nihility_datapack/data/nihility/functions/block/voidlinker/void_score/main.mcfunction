scoreboard players operation global nihility.void_score += score nihility.data
execute as @a[distance=..15] run function nihility:block/voidlinker/void_score/player


bossbar set nihility:global_void_score players @a
bossbar set nihility:global_void_score visible true
execute store result bossbar nihility:global_void_score value run scoreboard players get global nihility.void_score
execute if score global nihility.void_score matches 100000.. run function nihility:block/voidlinker/void_score/reach_max
schedule function nihility:block/voidlinker/void_score/clear_bossbar 5s