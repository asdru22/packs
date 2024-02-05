tag @s remove dsl.entity.hurt
execute store result score $color dsl.dummy run data get entity @s item.tag.display.color
execute store result entity @s item.tag.display.color int 1 run scoreboard players remove $color dsl.dummy 1