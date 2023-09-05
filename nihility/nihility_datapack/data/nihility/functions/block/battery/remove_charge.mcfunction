scoreboard players operation temp nihility.data = @s nihility.id
execute if entity @s[scores={nihility.id=1..}] as @e[type=end_crystal,tag=nihility.voidlinker_crystal,tag=nihility.crystal.linked] if score @s nihility.id = temp nihility.data at @s run function nihility:block/voidlinker/unlink

playsound nihility:block.battery.break block @a[distance=..16] ~ ~ ~ 1 0.7

tp @s 0 -100 0
kill @s