execute unless entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:glowstone_dust"}]}] run scoreboard players operation @s nihility.stat.daylight -= cost nihility.data
item modify entity @s[gamemode=!creative,gamemode=!spectator] weapon.offhand nihility:remove_one
scoreboard players set dist nihility.data 30
function nihility:item/glimmering_stick/cast
playsound nihility:item.glimmering_stick.use player @a[distance=..16] ~ ~ ~ 2 1