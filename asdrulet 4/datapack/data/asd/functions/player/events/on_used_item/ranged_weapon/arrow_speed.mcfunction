execute store result score m.x asd.d run data get entity @s Motion[0] 1000
execute store result score m.y asd.d run data get entity @s Motion[1] 1000
execute store result score m.z asd.d run data get entity @s Motion[2] 1000

scoreboard players operation m.x asd.d *= s.arrow_speed asd.d
scoreboard players operation m.y asd.d *= s.arrow_speed asd.d
scoreboard players operation m.z asd.d *= s.arrow_speed asd.d

execute store result entity @s Motion[0] double 0.0001 run scoreboard players get m.x asd.d
execute store result entity @s Motion[1] double 0.0001 run scoreboard players get m.y asd.d
execute store result entity @s Motion[2] double 0.0001 run scoreboard players get m.z asd.d