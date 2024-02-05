scoreboard players add @s[scores={dsl.dummy=..6}] dsl.dummy 1
setblock ~ ~ ~ melon_stem[age=0]

execute if score @s dsl.dummy matches 2 run function dsl:block/mirage_blossom/grow/1
execute if score @s dsl.dummy matches 5 run function dsl:block/mirage_blossom/grow/2
execute if score @s dsl.dummy matches 7 run function dsl:block/mirage_blossom/grow/3