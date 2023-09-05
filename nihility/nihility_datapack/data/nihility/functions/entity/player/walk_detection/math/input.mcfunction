scoreboard players set .w nihility.vars 0
scoreboard players set .a nihility.vars 0
scoreboard players set .s nihility.vars 0
scoreboard players set .d nihility.vars 0
scoreboard players set .dir nihility.vars 0
execute if score .z nihility.vars matches 0 if score .x nihility.vars matches 0 run scoreboard players set .dir nihility.vars -999
execute unless score .dir nihility.vars matches -999 run function nihility:entity/player/walk_detection/math/calc_range