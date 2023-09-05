############################################################
# Repairs items in the proper order as intenaar
############################################################

# Set proper values for the amount thead_equipment the item should be repaired
scoreboard players set #item_durability_change aar.int 2
scoreboard players operation #item_durability_change aar.int *= @s aar.old_xp

# Repair items in the proper order
execute if entity @s[predicate=aar:entity/holding/mending_item/mainhand] run function aar:item/durability/slots/mainhand
execute if entity @s[predicate=!aar:entity/holding/mending_item/mainhand,predicate=aar:entity/holding/mending_item/offhand] run function aar:item/durability/slots/offhand
execute if entity @s[predicate=!aar:entity/holding/mending_item/mainhand,predicate=!aar:entity/holding/mending_item/offhand,predicate=aar:entity/holding/mending_item/head] run function aar:item/durability/slots/head

# Subtract xp based on how much you used
scoreboard players operation #item_durability_change aar.int /= #2 aar.int
function aar:item/durability/mending/xp_subtraction_loop
