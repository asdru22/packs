tag @s remove asd.player.events.death.schedule
function asd:player/displays/healthbar
scoreboard players operation @s asd.stat.health.current = @s asd.stat.health.base
attribute @s generic.attack_damage base set 10

effect give @s minecraft:saturation 100000 10 true
effect give @s minecraft:fire_resistance 100000 10 true