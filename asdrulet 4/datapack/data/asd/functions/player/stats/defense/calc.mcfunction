execute store result score d.1 asd.d run scoreboard players operation true_dmg_recived asd.d = dmg.recived asd.d
scoreboard players operation true_dmg_recived asd.d *= true_dmg_recived asd.d
scoreboard players operation d.1 asd.d += @s asd.stat.defense.current
scoreboard players operation true_dmg_recived asd.d /= d.1 asd.d
execute if entity @s[scores={asd.effect.absorption=1..}] run function asd:effects/absorption/main
scoreboard players operation @s asd.stat.health.current -= true_dmg_recived asd.d
function asd:player/displays/healthbar
execute if score true_dmg_recived asd.d matches 1.. run function asd:player/displays/indicators/remove_health
execute if score @s asd.stat.health.current matches ..0 run function asd:player/events/actions/on_death/main
scoreboard players set @s asd.regen.delay 10