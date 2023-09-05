execute if entity @s[tag=nihility.entity.sculker.found_player,tag=nihility.entity.sculker.open] unless entity @a[distance=1.5..20,gamemode=!creative,gamemode=!spectator] run function nihility:entity/sculker/lost_player

execute if entity @s[tag=!nihility.entity.sculker.found_player,tag=nihility.entity.sculker.close] if entity @a[distance=1.5..20,gamemode=!creative,gamemode=!spectator] run function nihility:entity/sculker/found_player

execute if entity @s[tag=nihility.entity.sculker.open] run function nihility:entity/sculker/open

execute if predicate nihility:technical/rng/33 if entity @s[tag=!nihility.entity.sculker.open] run playsound nihility:entity.sculker.idle neutral @a[distance=..16]