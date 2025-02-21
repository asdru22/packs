############################################################
# Functions to run off of brewing stand markers every second
############################################################

execute store result score @s srn.dummy run data get block ~ ~ ~ BrewTime
execute if score @s srn.dummy matches 1..22 run function srn:block/brewing_stand/brewing/finish