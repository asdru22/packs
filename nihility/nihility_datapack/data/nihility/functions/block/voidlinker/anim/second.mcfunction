execute if block ~ ~ ~ end_gateway run setblock ~ ~ ~ air
tp @s ~ ~-10 ~
scoreboard players remove @s nihility.data 1
execute at @s unless block ~ ~ ~ #nihility:unbreakable run setblock ~ ~ ~ end_gateway{Age:-9223372036854775808L} 
data modify storage nihility:storage root.temp.data set from entity @s Pos

scoreboard players operation temp nihility.data = @s nihility.id2
execute as @e[type=end_crystal,tag=nihility.voidlinker_crystal] if score @s nihility.id2 = temp nihility.data run function nihility:block/voidlinker/anim/beam
execute as @a[distance=..50] at @s run playsound minecraft:block.beacon.deactivate block @s ~ ~ ~ 2 0.6
particle cloud ~ ~-2 ~ 0.5 0.5 0.5 0.05 10
execute if entity @s[scores={nihility.data=0}] positioned ~ ~-10 ~ run function nihility:block/voidlinker/anim/drop_item
