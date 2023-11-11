attribute @s generic.attack_damage base set 10
attribute @s generic.max_health base set 1000
effect give @s minecraft:instant_health 1 250 true

tag @s remove atr.death_schedule

function atr:player/get_equipment/init
function atr:player/get_equipment/passive_stats

scoreboard players set @s atr.regeneration_cooldown 0

scoreboard players operation @s atr.stat.current_health = @s atr.stat.max_health
scoreboard players operation @s atr.stat.current_health /= #2 atr.int