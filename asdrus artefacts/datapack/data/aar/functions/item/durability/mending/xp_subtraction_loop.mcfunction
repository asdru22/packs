############################################################
# Subtracts an amount of xp points based on a score
############################################################

xp add @s -1 points
scoreboard players add #item_durability_change aar.int 1
execute if score #item_durability_change aar.int matches ..-1 run function aar:item/durability/mending/xp_subtraction_loop
