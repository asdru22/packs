############################################################
# Functions to run off of brewing stand markers every tick
############################################################
execute unless predicate cgn:location_check/brewing_stand_force/any run return run scoreboard players reset @s cgn.dummy2

function cgn:block/vanilla/brewing_stand/brewing/increase_state