data modify storage nihility:storage root.temp.rot set from entity @s Rotation
execute at @s as @e[type=#nihility:airship_parts,tag=nihility.airship,dx=0,limit=3,sort=nearest] if score @s nihility.id = temp.id nihility.data at @s run function nihility:entity/airship/parts/main
#tellraw @p {"nbt":"root.temp.keystrokes[]","storage":"nihility:storage"}