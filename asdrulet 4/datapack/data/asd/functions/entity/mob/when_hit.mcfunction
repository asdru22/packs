execute store result score real.damage_recived asd.d run data get entity @s Health -10
scoreboard players operation real.damage_recived asd.d += @s asd.temp_health
scoreboard players operation @s asd.stat.health.current -= s.damage asd.d
execute if entity @s[type=!player] run function asd:entity/mob/update_hp_display

## indicators
function asd:player/displays/indicators/damage_dealt
## death
execute if score @s asd.stat.health.current matches ..0 if entity @s[type=!player] run function asd:entity/mob/on_death
execute if score @s asd.stat.health.current matches ..0 if entity @s[type=player] run function asd:player/events/actions/on_death/by_player


scoreboard players operation dmg.recived asd.d = s.damage asd.d