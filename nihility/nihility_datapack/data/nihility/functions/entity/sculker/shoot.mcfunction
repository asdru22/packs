playsound nihility:entity.sculker.shoot neutral @a[distance=..16]
scoreboard players reset @s nihility.vars
scoreboard players set dist nihility.data 10
execute positioned ~ ~1 ~ run function nihility:entity/sculker/cast
playsound minecraft:entity.warden.sonic_boom hostile @a[distance=..16] ~ ~ ~ 10 1.4