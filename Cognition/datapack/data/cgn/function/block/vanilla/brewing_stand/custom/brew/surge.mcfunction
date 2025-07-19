# Starts the recipe process of a brewing recipe
data modify storage cgn:storage root.temp.item.components."minecraft:potion_contents" set value {custom_color:7267071,potion:"minecraft:mundane"}
data modify storage cgn:storage root.temp.item.components."minecraft:hide_additional_tooltip" set value {}
data modify storage cgn:storage root.temp.item.components."minecraft:custom_data".cgn set value {id:"potion",potion:{id:"cgn:surge"}}
# effects
execute if data storage cgn:storage root.temp.item{id:"minecraft:potion"} run data modify storage cgn:storage root.temp.item.components."minecraft:potion_contents".custom_name set value 'surge'
execute if data storage cgn:storage root.temp.item{id:"minecraft:potion"} run data modify storage cgn:storage root.temp.item.components."minecraft:lore" set value ['""','{"color":"dark_purple","italic":false,"translate":"potion.whenDrank"}','{"color":"blue","italic":false,"translate":"attribute.modifier.plus.0","with":[5,{"translate":"item.cgn.electroplasm"}]}']

execute if data storage cgn:storage root.temp.item{id:"minecraft:splash_potion"} run data modify storage cgn:storage root.temp.item.components."minecraft:potion_contents".custom_name set value '{"translate":"item.cgn.splash_potion.effect.surge","italic":false}'
execute if data storage cgn:storage root.temp.item{id:"minecraft:splash_potion"} run data modify storage cgn:storage root.temp.item.components."minecraft:lore" set value ['""','{"color":"dark_purple","italic":false,"translate":"potion.whenDrank"}','{"color":"blue","italic":false,"translate":"attribute.modifier.plus.0","with":[2,{"translate":"item.cgn.electroplasm"}]}']

execute if data storage cgn:storage root.temp.item{id:"minecraft:lingering_potion"} run data modify storage cgn:storage root.temp.item.components."minecraft:potion_contents".custom_name set value '{"translate":"item.cgn.lingering_potion.effect.surge","italic":false}'
execute if data storage cgn:storage root.temp.item{id:"minecraft:lingering_potion"} run data modify storage cgn:storage root.temp.item.components.display."minecraft:lore" set value ['""','{"color":"dark_purple","italic":false,"translate":"potion.whenDrank"}','{"color":"blue","italic":false,"translate":"attribute.modifier.plus.0","with":[0.5,{"translate":"item.cgn.electroplasm"}]}']