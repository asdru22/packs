## debouncing rotation
scoreboard players operation .ry nihility.vars = @s nihility.vars
execute store result score .ry nihility.vars run data get entity @s Rotation[0] 1.0

## dir = atan2(Motion[0],Motion[2]) + Rotation[0]
scoreboard players operation in nihility.data = .z nihility.vars
scoreboard players operation in1 nihility.data = .x nihility.vars
function nihility:entity/player/walk_detection/math/atan2
scoreboard players operation .dir nihility.vars = out nihility.data
scoreboard players operation .dir nihility.vars += .ry nihility.vars

## Map angle to the range 0..360
scoreboard players operation .dir nihility.vars %= 360 nihility.data

## nihility.vars based on dir angle ranges
execute if score .dir nihility.vars matches 23..157 run scoreboard players set .a nihility.vars 1
execute if score .dir nihility.vars matches 112..248 run scoreboard players set .s nihility.vars 1
execute if score .dir nihility.vars matches 203..337 run scoreboard players set .d nihility.vars 1
execute if score .dir nihility.vars matches 293..360 run scoreboard players set .w nihility.vars 1
execute if score .dir nihility.vars matches 0..67 run scoreboard players set .w nihility.vars 1
