scoreboard players operation true_dmg_recived asd.d = @s asd.stat.health.max
scoreboard players operation true_dmg_recived asd.d /= const.100 asd.d
execute if score true_dmg_recived asd.d matches 0 run scoreboard players set true_dmg_recived asd.d 1
scoreboard players operation @s asd.stat.health.current -= true_dmg_recived asd.d
function asd:player/displays/effects/electrified
execute if entity @s[scores={asd.effect.absorption=1..}] run function asd:effects/absorption/main
execute if score @s[type=player] asd.stat.health.current matches ..0 run function asd:player/events/actions/on_death/main
execute if score @s[type=!player] asd.stat.health.current matches ..0 run function asd:entity/mob/on_death

scoreboard players set @s asd.regen.delay 10
execute if predicate asd:technical/rng/20 anchored eyes if entity @e[type=#asd:mobs,distance=..5,nbt=!{Invulnerable:1b}] facing entity @e[type=#asd:mobs,distance=0.1..5,nbt=!{Invulnerable:1b},limit=1,sort=random] eyes run function asd:effects/electrified/attempt_cast
execute if entity @s[type=!player] run function asd:entity/mob/update_hp_display

effect give @s[type=!#asd:undead] instant_damage 1 30 true
effect give @s[type=#asd:undead] instant_health 1 30 false