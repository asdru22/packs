tag @s remove nihility.can_dash

data modify storage nihility:storage root.temp.Pos set from entity @s Pos
execute store result score .x nihility.vars run data get storage nihility:storage root.temp.Pos[0] 100.0
execute store result score .z nihility.vars run data get storage nihility:storage root.temp.Pos[2] 100.0
scoreboard players operation #temp nihility.x = .x nihility.vars
scoreboard players operation #temp nihility.z = .z nihility.vars
scoreboard players operation .x nihility.vars -= @s nihility.x
scoreboard players operation .z nihility.vars -= @s nihility.z
function nihility:entity/player/walk_detection/math/input
scoreboard players operation @s nihility.x = #temp nihility.x
scoreboard players operation @s nihility.z = #temp nihility.z
execute if score .w nihility.vars matches 1 run tag @s add nihility.can_dash