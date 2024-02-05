attribute @s minecraft:generic.attack_damage base set 10
effect give @s saturation infinite 1 true

execute in overworld positioned 0 -64 0 run function a:combat/player/equipment/get

function a:combat/stats/get/attributes

scoreboard players operation @s stat.health.current = @s stat.health.max
scoreboard players operation @s stat.stamina.current = @s stat.stamina.max

scoreboard players set @s stat.cast_cooldown 0
scoreboard players set @s regeneration_cooldown 0