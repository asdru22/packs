scoreboard players remove @s[scores={regeneration_cooldown=1..}] regeneration_cooldown 1

execute unless score @s[scores={regeneration_cooldown=0}] stat.health.current = @s stat.health.max run function a:combat/stats/health/regenerate

execute if entity @s[advancements={a:technical/respawn=true}] run function a:combat/player/death