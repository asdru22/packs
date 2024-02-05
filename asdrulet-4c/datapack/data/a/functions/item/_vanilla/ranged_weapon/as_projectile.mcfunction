tag @s add processed

$execute store result entity @s Motion[0] double 0.0001 run data get entity @s Motion[0] $(vel_mult)
$execute store result entity @s Motion[1] double 0.0001 run data get entity @s Motion[1] $(vel_mult)
$execute store result entity @s Motion[2] double 0.0001 run data get entity @s Motion[2] $(vel_mult)