scoreboard players reset .dist asy.data
data modify storage asy:storage root.temp.UUID set from entity @s UUID
execute as @e[type=vex,tag=asy.symbiote,distance=..15] at @s run function asy:entity/aggro
playsound asy:item.whip.crack player @a[distance=..10] ~ ~ ~