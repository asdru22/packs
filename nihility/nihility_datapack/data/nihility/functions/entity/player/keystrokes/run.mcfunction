data modify storage nihility:storage root.temp.keystrokes set value []
scoreboard players operation temp.id nihility.data = @s nihility.id2

execute store result score #dx nihility.vars run data get entity @s Motion[0] 800.0
execute store result score #dz nihility.vars run data get entity @s Motion[2] 800.0
function nihility:entity/player/keystrokes/position_x/start