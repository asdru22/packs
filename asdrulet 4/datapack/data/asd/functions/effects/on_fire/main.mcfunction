scoreboard players operation true_dmg_recived asd.d = @s asd.stat.health.max
scoreboard players operation true_dmg_recived asd.d /= const.100 asd.d
execute if score true_dmg_recived asd.d matches 0 run scoreboard players set true_dmg_recived asd.d 1
execute if entity @s[scores={asd.effect.absorption=1..}] run function asd:effects/absorption/main
scoreboard players operation @s asd.stat.health.current -= true_dmg_recived asd.d
function asd:player/displays/effects/on_fire
execute if score @s asd.stat.health.current matches ..0 run function asd:player/events/actions/on_death/main
scoreboard players set @s asd.regen.delay 10

effect give @s[type=!#asd:undead] instant_damage 1 30 true
effect give @s[type=#asd:undead] instant_health 1 30 false