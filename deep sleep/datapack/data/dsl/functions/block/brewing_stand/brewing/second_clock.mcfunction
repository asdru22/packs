############################################################
# Functions to run off of brewing stand markers every second
############################################################

execute store result score @s dsl.dummy run data get block ~ ~ ~ BrewTime
execute if score @s dsl.dummy matches 1..22 run function dsl:block/brewing_stand/brewing/finish