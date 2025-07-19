data modify storage cgn:storage root.temp.next_proj set from storage cgn:storage root.temp.item.components."minecraft:custom_data".cgn.stored_projectiles[-1]

function cgn:item/windup_crossbow/use/get_model

data modify storage cgn:storage root.temp.item.components."minecraft:charged_projectiles" set value []
data modify storage cgn:storage root.temp.item.components."minecraft:charged_projectiles" insert -1 from storage cgn:storage root.temp.next_proj

execute if data storage cgn:storage root.temp.item.components."minecraft:enchantments"{levels:{"minecraft:multishot":1}} run function cgn:item/windup_crossbow/use/multishot