execute if entity @s[scores={srn.used_warped_fungus_on_a_stick=1..}] run function srn:item/warped_fungus_on_a_stick/use

execute if score @s srn.using_item matches 1.. run function srn:item/usable/tick

execute if score @s srn.leave_game matches 1.. run function srn:entity/player/preserve_scoreboards/init

execute if score @s srn.used_item_frame matches 1.. run function srn:entity/item_frame/init

execute if entity @s[scores={srn.throw_lingering_potion=1..}] run function srn:item/throwable_potion/init
execute if entity @s[scores={srn.throw_splash_potion=1..}] run function srn:item/throwable_potion/init