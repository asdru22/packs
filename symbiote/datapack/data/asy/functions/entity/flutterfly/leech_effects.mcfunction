execute store result score .food asy.data run data get entity @s foodLevel
effect give @s hunger 2 50 true
execute if score .food asy.data matches 6.. run effect give @s minecraft:levitation 2 255 true