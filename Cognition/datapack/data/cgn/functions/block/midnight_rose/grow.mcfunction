scoreboard players add @s[scores={cgn.dummy=..6}] cgn.dummy 1
setblock ~ ~ ~ melon_stem[age=0]

execute if score @s cgn.dummy matches 2 run function cgn:block/midnight_rose/grow/1
execute if score @s cgn.dummy matches 5 run function cgn:block/midnight_rose/grow/2
execute if score @s cgn.dummy matches 7 run function cgn:block/midnight_rose/grow/3