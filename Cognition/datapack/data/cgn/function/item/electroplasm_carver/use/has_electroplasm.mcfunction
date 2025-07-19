data remove storage cgn:macro root
data modify storage cgn:macro root.owner set from entity @s UUID 
data modify storage cgn:macro root.rotation set from entity @s Rotation[0] 

scoreboard players operation #damage cgn.dummy = @s cgn.electroplasm_carver.damage
scoreboard players operation #damage cgn.dummy > #10 cgn.dummy
execute store result storage cgn:macro root.damage int 0.1 run scoreboard players get #damage cgn.dummy

execute anchored feet rotated ~ 0 positioned ~ ~.2 ~ run function cgn:entity/projectile/electroplasm_wave/summon with storage cgn:macro root

scoreboard players remove @s[gamemode=!creative,scores={cgn.electroplasm.current=10..}] cgn.electroplasm.current 10

playsound cgn:entity.electroplasm_wave.cast player @a[distance=..16] ~ ~ ~ 0.2 1
playsound cgn:entity.electroplasm_wave.swoosh master @a[distance=..16] ~ ~ ~ 0.5 1.5