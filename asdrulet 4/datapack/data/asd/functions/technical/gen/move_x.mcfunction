execute at @s run function asd:technical/gen/scan_coord
tp @s ~1 ~ ~
scoreboard players add x asd.d 1
execute if score x asd.d matches 41 at @s run function asd:technical/gen/move_y
execute if score x asd.d matches ..40 if score z asd.d matches ..40 at @s run function asd:technical/gen/move_x

### out of loop
kill @s