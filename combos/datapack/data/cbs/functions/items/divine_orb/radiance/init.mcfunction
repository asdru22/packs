execute unless score #temp cbs.dummy matches 1 if entity @s[tag=!cbs.combo.radiance] run function cbs:items/divine_orb/radiance/activate
execute unless score #temp cbs.dummy matches 1 if entity @s[tag=cbs.combo.radiance] run function cbs:items/divine_orb/radiance/deactivate

scoreboard players reset #temp cbs.dummy 