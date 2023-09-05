execute at @s run function asy:technical/gen/scan_coord
tp @s ~1 ~ ~
scoreboard players add x asy.data 1
execute if score x asy.data matches 41 at @s run function asy:technical/gen/move_y
execute if score x asy.data matches ..40 if score z asy.data matches ..40 at @s run function asy:technical/gen/move_x

### out of loop
kill @s