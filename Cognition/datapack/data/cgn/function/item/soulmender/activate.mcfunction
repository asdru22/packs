scoreboard players remove @s[gamemode=!creative] cgn.electroplasm.current 20
function cgn:entity/player/heal/main {amount:6000}
playsound cgn:item.soulmender.heal player @a[distance=..16] ~ ~ ~
particle sonic_boom ~ ~1 ~ 0 0 0 1 0 normal

tag @s add cgn.me
execute as @e[type=!#cgn:inanimate,predicate=cgn:entity_properties/can_be_damaged,distance=..3] run damage @s 3 minecraft:player_attack by @p[tag=cgn.me]
tag @s remove cgn.me