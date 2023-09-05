############################################################
# Tests if your XP level was changed by an XP orb
############################################################

# Calculations for if your xp level changed or not
scoreboard players operation @s aar.old_xp -= @s aar.current_xp
tag @s remove aar.saw_xp_orb
execute if score @s aar.old_xp matches ..-1 run function aar:item/durability/mending/repair_priority_list
scoreboard players reset @s aar.old_xp
