execute as @e[type=armor_stand,tag=asd.billboard.display] run kill @s
scoreboard players reset billboard.open_display asd.d
scoreboard players reset .move asd.d
execute as @e[type=marker,tag=asd.billboard.center,sort=nearest,limit=1] at @s align xyz run function asd:block/billboard/impl/buttons/marker