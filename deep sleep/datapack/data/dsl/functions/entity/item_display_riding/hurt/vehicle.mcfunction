execute store result score $health dsl.dummy run data get entity @s Health -10
scoreboard players add $health dsl.dummy 10000
scoreboard players operation @s dsl.dummy -= $health dsl.dummy
data merge entity @s {Health:1000f}
execute if entity @s[scores={dsl.dummy=..0}] run function dsl:entity/item_display_riding/death/vehicle