scoreboard players set #effect cbs.dummy 1
scoreboard players set #loop cbs.dummy 15
tag @s add cbs.me
execute anchored eyes positioned ^ ^ ^ positioned ~ ~-0.2 ~ summon item_display positioned ^ ^ ^1 run function cbs:items/thundering_staff/shock/main
tag @s remove cbs.me