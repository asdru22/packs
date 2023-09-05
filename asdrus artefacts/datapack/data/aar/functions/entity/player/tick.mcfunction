execute if score @s aar.used_crossbow matches 1.. if predicate aar:entity/holding/windup_crossbow run function aar:item/windup_crossbow/use/tick
execute if score @s aar.using_item matches 1.. run function aar:item/usable/tick

execute if predicate aar:entity/holding/mending_item/any positioned ~ ~0.805 ~ run function aar:item/durability/mending/xp_orb_test/main

execute if score @s aar.used_warped_fungus_on_a_stick matches 1.. run function aar:item/warped_fungus_on_a_stick/tick