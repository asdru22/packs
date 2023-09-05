function asd:player/stats/hp_regen/decrease_timer

function asd:player/displays/actionbar/main

execute if score @s asd.stat.electricity.current < @s asd.stat.electricity.max run function asd:player/stats/electricity_regen/get

execute if entity @s[tag=asd.ability] run function asd:item/custom/abilities/main

function asd:player/events/levelling/xp_bar/second
function reg:player/second

execute if entity @s[scores={asd.player_join=1..}] run function asd:player/join

scoreboard players remove @s[scores={asd.ability_cooldown=1..}] asd.ability_cooldown 1