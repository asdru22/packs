execute in reg:tutorial run tp @s -218 111 -60 0 90
effect give @s blindness 1 10 true
effect give @s minecraft:darkness 60 0 true
tellraw @s {"translate":"msg.tutorial.wake_up","italic":true,"color":"gray"}
tag @s add asd.in_tutorial

loot give @s loot asd:item/book/test