function gh:item/grappling_hook/as_player/get_slot
tag @s add gh.using_grapple
# Check if player is still using item
execute if score @s gh.using_item = @s gh.using_item2 run function gh:entity/player/using_item/release
scoreboard players operation @s gh.using_item2 = @s gh.using_item