execute unless score @s cgn.animation_timer matches -2147483648..2147483647 store result score @s cgn.animation_timer run random value 1..10

scoreboard players add @s[tag=!cgn.potted,scores={cgn.dummy=7}] cgn.animation_timer 1

scoreboard players add @s[tag=cgn.potted] cgn.animation_timer 1
execute if score @s cgn.animation_timer matches 30.. run function cgn:block/midnight_rose/in_soul_sand_valley/convert