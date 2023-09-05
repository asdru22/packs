execute if entity @s[scores={gh.using_item=1..}] run function gh:entity/player/using_item/tick

execute if entity @s[scores={gh.dmg_blocked=10..}] run function gh:entity/player/vanilla_shield

execute if entity @s[tag=gh.land] run function gh:item/grappling_hook/as_player/on_land