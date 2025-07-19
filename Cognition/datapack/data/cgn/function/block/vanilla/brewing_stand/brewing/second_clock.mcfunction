############################################################
# Functions to run off of brewing stand markers every second
############################################################

execute store result score @s cgn.dummy run data get block ~ ~ ~ BrewTime
execute if score @s cgn.dummy matches 1..22 run function cgn:block/vanilla/brewing_stand/brewing/finish