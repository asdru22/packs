execute if entity @s[type=#a:mobs] run function a:mob/tick
execute if entity @s[tag=damage_indicator] run function a:combat/entity/hurt/display/display_tick
execute if entity @s[tag=particle] run function a:particle/tick/main