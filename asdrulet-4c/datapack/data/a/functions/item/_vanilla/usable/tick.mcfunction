execute if score @s using_item.current = @s using_item.old run function a:item/_vanilla/usable/release

scoreboard players operation @s using_item.old = @s using_item.current

execute if predicate a:combat/player/hold_ranged_weapon run function a:combat/stats/stamina/charge_ranged_weapon