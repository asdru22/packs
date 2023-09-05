execute unless entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:amethyst_shard"}]}] run scoreboard players operation @s nihility.stat.daylight -= cost nihility.data
item modify entity @s[gamemode=!creative,gamemode=!spectator] weapon.offhand nihility:remove_one
scoreboard players set distance nihility.data 15
function nihility:item/crystal_weaver/cast