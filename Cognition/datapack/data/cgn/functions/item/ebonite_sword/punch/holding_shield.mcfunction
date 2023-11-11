scoreboard players operation $strength delta.api.launch = @e[type=item_display,tag=cgn.double_edged_sword,tag=cgn.me,limit=1,sort=nearest] cgn.dummy
scoreboard players operation $strength delta.api.launch *= #100 cgn.dummy
execute rotated as @s anchored eyes facing ^ ^ ^-1 run function delta:api/launch_looking

data modify storage cgn:storage root.temp.item set from entity @s SelectedItem{id:"minecraft:shield"}
data modify storage cgn:storage root.temp.item set from entity @s Inventory[{Slot:-106b,id:"minecraft:shield"}]

execute if data storage cgn:storage root.temp.item.Slot run item modify entity @s[gamemode=!creative] weapon.offhand cgn:damage/shield
execute unless data storage cgn:storage root.temp.item.Slot run item modify entity @s[gamemode=!creative] weapon.mainhand cgn:damage/shield

playsound minecraft:item.shield.block player @a[distance=..16]