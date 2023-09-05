scoreboard players set @s nihility.use_bow 1
scoreboard players reset @s nihility.use_crossbow

execute store result score UsingQuiver nihility.data run clear @s #nihility:projectiles{nihility:{IsArrow:1b}} 0 
execute if score UsingQuiver nihility.data matches 1.. run function nihility:item/quiver/arrow_shot/main

scoreboard players reset @s nihility.use_bow