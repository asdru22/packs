scoreboard players reset $damage var
execute on attacker run scoreboard players operation $damage var = @s stat.damage
execute if score $damage var matches 1.. run function a:combat/player/hurt_by_entity/damage

advancement revoke @s only a:technical/combat/entity_hurt_player
tag @s add schedule.clear_effects
schedule function a:combat/player/hurt_by_entity/schedule 1t