data modify storage a:data root.temp.lore.array set value []

$execute if data storage a:data root.item.tag.a.element run data modify storage a:data root.temp.lore.array insert -1 value '{"translate": "item.lore.description.element", "color": "gray", "italic": false, "with": [{"translate": "item.rarity.$(rarity)", "color": "$(element_color)"}, {"translate": "item.type.$(type)", "color": "$(element_color)"}, {"translate": "item.element.$(element)", "color": "$(element_color)"}]}'

$execute unless data storage a:data root.item.tag.a.element run data modify storage a:data root.temp.lore.array insert -1 value '{"translate":"item.lore.description.no_element","color":"#918474","italic":false,"with":[{"translate":"item.rarity.$(rarity)"},{"translate":"item.type.$(type)"}]}'


execute if data storage a:data root.item.tag.a.stats run function a:item/modify/lore/stats/main

execute if data storage a:data root.item.tag.a.quality run function a:item/modify/lore/quality/main

execute if data storage a:data root.item.tag.a.set_bonus run function a:item/modify/lore/set_bonus/main

execute if data storage a:data root.item.tag.a.etheric_trait run function a:item/modify/lore/etheric_trait/main