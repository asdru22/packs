execute if entity @s[tag=cbs.combo.diffuse] run function cbs:items/divine_orb/diffuse/var
execute if entity @s[tag=cbs.combo.focus] run function cbs:items/divine_orb/focus/var
execute if entity @s[tag=!cbs.combo.focus,tag=!cbs.combo.diffuse] run function cbs:items/divine_orb/radiance/var

tag @s add cbs.me
execute anchored eyes positioned ^ ^ ^ positioned ~ ~-0.2 ~ summon item_display positioned ^ ^ ^1 run function cbs:items/divine_orb/radiance/main
tag @s remove cbs.me

scoreboard players remove @s cbs.stamina 20
function cbs:player/stamina/update