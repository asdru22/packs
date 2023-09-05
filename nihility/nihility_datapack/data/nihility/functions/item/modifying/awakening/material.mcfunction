execute if data storage nihility:storage root.temp.item.tag.nihility{type:"melee"} run data modify storage nihility:storage root.temp.in1 set value '{"translate":"item.nihility.lore.type.melee"}'
execute if data storage nihility:storage root.temp.item.tag.nihility.root{material:"Metal"} run data modify storage nihility:storage root.temp.in2 set value '{"translate":"item.nihility.lore.material.metal"}'

item modify block ~ ~ ~ container.0 nihility:awakening/material
data modify storage nihility:storage root.temp.lore insert -1 from block ~ ~ ~ Items[0].tag.display.Name