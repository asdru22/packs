############################################################
# Functions to run off of brewing stand markers every tick
############################################################
execute if predicate dsl:block/brewing_stand_force/uncompatible run data modify block ~ ~ ~ BrewTime set value 600
execute unless predicate dsl:block/brewing_stand_force/any run scoreboard players reset @s dsl.dummy2
execute if predicate dsl:block/brewing_stand_force/any run function dsl:block/brewing_stand/brewing/increase_state