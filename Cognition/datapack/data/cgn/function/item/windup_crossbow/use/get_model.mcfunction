# pyroplastic bolts
execute if data storage cgn:storage root.temp.next_proj{id:"minecraft:arrow",components:{"minecraft:item_name":'{"translate":"item.cgn.pyroplastic_bolt"}'}} run return run data modify storage cgn:storage root.temp.item.components."minecraft:custom_model_data" set value 3
# tipped arrows
execute if data storage cgn:storage root.temp.next_proj{id:"minecraft:tipped_arrow"} run return run data modify storage cgn:storage root.temp.item.components."minecraft:custom_model_data" set value 0
# spectral arrows
execute if data storage cgn:storage root.temp.next_proj{id:"minecraft:spectral_arrow"} run return run data modify storage cgn:storage root.temp.item.components."minecraft:custom_model_data" set value 1
# fireworks
execute if data storage cgn:storage root.temp.next_proj{id:"minecraft:firework_rocket"} run return run data modify storage cgn:storage root.temp.item.components."minecraft:custom_model_data" set value 2
# default
data modify storage cgn:storage root.temp.item.components."minecraft:custom_model_data" set value 0