scoreboard players set temp2 nihility.data 1
scoreboard players add links nihility.data 1

execute as @e[type=snowball,tag=coc.natural_rift.display,tag=!nihility.battery.linked,sort=nearest,distance=..15] run function coc_compat:entity/natural_rift_display/link
tag @s add nihility.crystal.linked
tag @s add nihility.linked.rift
scoreboard players operation @s nihility.id = links nihility.data

data modify entity @s BeamTarget.X set from storage nihility:storage root.temp.data[0]
data modify entity @s BeamTarget.Y set from storage nihility:storage root.temp.data[1]
data modify entity @s BeamTarget.Z set from storage nihility:storage root.temp.data[2]
