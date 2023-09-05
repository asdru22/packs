scoreboard players operation $id gh.data = @s gh.data
execute as @e[type=armor_stand,tag=gh.link] run function gh:item/grappling_hook/as_armor_stand/clear

tag @s remove gh.land
scoreboard players reset @s gh.link
effect clear @s minecraft:levitation

stopsound @s * gh:item.grapple.return