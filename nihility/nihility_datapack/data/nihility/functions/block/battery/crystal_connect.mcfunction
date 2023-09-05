tag @s add nihility.battery.linked
execute store result score @s nihility.id run scoreboard players get links nihility.data
data modify storage nihility:storage root.temp.data set from entity @s Pos
execute store result score temp nihility.data run data get storage nihility:storage root.temp.data[1] 10
scoreboard players remove temp nihility.data 10
execute store result storage nihility:storage root.temp.data[1] double 0.1 run scoreboard players get temp nihility.data
playsound nihility:block.link player @a[distance=..16] ~ ~ ~ 2 0.9
advancement grant @a[tag=nihility.me] only nihility:progression/linking