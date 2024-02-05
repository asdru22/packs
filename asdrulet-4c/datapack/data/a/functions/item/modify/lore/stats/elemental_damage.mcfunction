execute if data storage a:data root.temp.lore.categories{active:false} run data modify storage a:data root.temp.lore.array insert -1 value '""'
data modify storage a:data root.temp.lore.categories.active set value true

$data modify storage a:data root.temp.lore.array insert -1 value '{"italic":false,"color":"gray","translate":"item.stat.damage.elemental","with":[{"text":"$(amount)","color":"#ff0000"},{"translate":"item.stat.elemental","color":"$(element_color)","with":[{"text":"$(elemental_damage)"},{"translate":"icon.element.$(element)","font":"a:main"}]}]}' 
