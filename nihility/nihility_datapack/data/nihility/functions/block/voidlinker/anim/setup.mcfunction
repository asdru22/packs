scoreboard players set @s nihility.data 10
tag @s add nihility.setup
execute store result entity @s Pos[1] double 0.1 run scoreboard players get temp2 nihility.data
execute at @s unless block ~ ~ ~ #nihility:unbreakable run setblock ~ ~ ~ end_gateway{Age:-9223372036854775808L} 
scoreboard players operation @s nihility.id2 = temp3 nihility.data
data modify entity @s data.item set from storage nihility:storage root.temp.data