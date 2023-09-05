execute store result score real.damage_recived asd.d run data get entity @s Health -10
scoreboard players operation real.damage_recived asd.d += @s asd.temp_health
scoreboard players operation @s asd.stat.health.current -= s.damage asd.d
## mob
execute if entity @s[type=!player] run function asd:entity/mob/update_hp_display
execute if score @s asd.stat.health.current matches ..0 if entity @s[type=!player] run function asd:entity/mob/on_death

## indicators
function asd:player/displays/indicators/damage_dealt
## death

scoreboard players operation dmg.recived asd.d = s.damage asd.d
execute if entity @s[type=player] run function asd:player/events/actions/when_hit/by_player