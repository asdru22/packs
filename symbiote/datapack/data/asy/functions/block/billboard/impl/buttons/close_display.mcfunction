execute as @e[type=armor_stand,tag=asy.billboard.display] if score @s asy.id = .temp asy.data run kill @s
tag @s remove asy.open_display
scoreboard players reset .move asy.data
execute as @e[type=marker,tag=asy.billboard.center,sort=nearest,limit=1] at @s if score @s asy.id = .temp asy.data align xyz run function asy:block/billboard/impl/buttons/marker