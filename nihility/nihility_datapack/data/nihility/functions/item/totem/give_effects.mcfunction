effect clear @s
execute unless data storage nihility:storage root.temp.item.tag.nihility{consume:1b} if data storage nihility:storage root.temp.item.Slot run loot replace entity @s weapon.offhand loot nihility:technical/carrot_on_a_stick
execute unless data storage nihility:storage root.temp.item.tag.nihility{consume:1b} unless data storage nihility:storage root.temp.item.Slot run loot replace entity @s weapon.mainhand loot nihility:technical/carrot_on_a_stick
advancement revoke @s only nihility:technical/player/use_totem
summon area_effect_cloud ~ ~.5 ~ {Radius:0.1f,Duration:6,Age:4,WaitTime:0,Tags:["nihility.aec","nihility.setup"]}
execute as @e[type=area_effect_cloud,tag=nihility.aec,tag=nihility.setup] run function nihility:item/totem/aec

scoreboard players add prev_health nihility.data 1
scoreboard players operation @s smithed.damage = prev_health nihility.data
function #smithed.damage:entity/apply