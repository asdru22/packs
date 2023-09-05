execute if predicate aar:entity/holding/windup_crossbow run function aar:item/windup_crossbow/charging/tick

execute if score @s aar.using_item = @s aar.using_item_new run function aar:item/usable/release

scoreboard players operation @s aar.using_item_new = @s aar.using_item