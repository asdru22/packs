data modify storage cgn:storage root.temp.item set from entity @s SelectedItem{id:"minecraft:shield",components:{"minecraft:enchantments":{levels:{"cgn:recoil":1}}}}
data modify storage cgn:storage root.temp.item set from entity @s Inventory[{Slot:-106b,id:"minecraft:shield",components:{"minecraft:enchantments":{levels:{"cgn:recoil":1}}}}]

execute if data storage cgn:storage root.temp.item.Slot if entity @s[gamemode=!creative] run return run function cgn:technical/macros/damage_slot/main {slot:"weapon.offhand",amount:1}
execute if entity @s[gamemode=!creative] run function cgn:technical/macros/damage_slot/main {slot:"weapon.mainhand",amount:1}