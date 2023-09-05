scoreboard players operation true_dmg_recived asd.d -= @s asd.effect.absorption
scoreboard players set @s asd.effect.absorption 0
execute positioned ~ ~.23 ~ run function asd:player/displays/indicators/absorption