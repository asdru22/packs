############################################################
# Functions to run off of brewing stand markers every tick
############################################################
execute unless predicate srn:block/brewing_stand_force/any run scoreboard players reset @s srn.dummy2
execute if predicate srn:block/brewing_stand_force/any run function srn:block/brewing_stand/brewing/increase_state