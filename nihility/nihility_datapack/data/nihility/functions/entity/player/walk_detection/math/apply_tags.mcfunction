## added functionality for those not utilizing perfect organization
tag @s remove nihility.w
tag @s remove nihility.a
tag @s remove nihility.s
tag @s remove nihility.d
execute if score .w nihility.vars matches 1 run tag @s add nihility.w
execute if score .a nihility.vars matches 1 run tag @s add nihility.a
execute if score .s nihility.vars matches 1 run tag @s add nihility.s
execute if score .d nihility.vars matches 1 run tag @s add nihility.d
execute if score .w nihility.vars matches 1 run tag @s add nihility.can_dash
say  tags