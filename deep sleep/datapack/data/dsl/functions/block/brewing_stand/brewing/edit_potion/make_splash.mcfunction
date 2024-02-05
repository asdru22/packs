############################################################
# Commands to edit an existing custom potion in the brewing stand
############################################################

data modify storage dsl:storage root.temp.item.id set value "minecraft:splash_potion"

execute if data storage dsl:storage root.temp.item.tag.dsl{id:"mirage_potion"} run data modify storage dsl:storage root.temp.item.tag.display.Name set value '{"translate":"item.dsl.splash_potion.effect.mirage","italic":false}'

execute if data storage dsl:storage root.temp.item.tag.dsl{id:"third_eye"} run data modify storage dsl:storage root.temp.item.tag.display.Name set value '{"translate":"item.dsl.splash_potion.effect.third_eye","italic":false}'
execute if data storage dsl:storage root.temp.item.tag.dsl{id:"third_eye"} run data modify storage dsl:storage root.temp.item.tag.display.Lore set value ['{"color":"dark_gray","italic":false,"translate":"potion.withDuration","with":[{"translate":"effect.dsl.third_eye"},{"translate":"potion.dsl.duration","with":[1,2,0,0]}]}','""','{"translate": "dsl.tooltip","font": "dsl:main","color": "white","italic": false,"with": [{"translate":"pack.dsl","font":"minecraft:default","color":"#833BFF","italic":true}]}']


execute if data storage dsl:storage root.temp.item.tag.dsl{id:"denial"} run data modify storage dsl:storage root.temp.item.tag.display.Name set value '{"translate":"item.dsl.splash_potion.effect.denial","italic":false}'
execute if data storage dsl:storage root.temp.item.tag.dsl{id:"denial"} run data modify storage dsl:storage root.temp.item.tag.display.Lore set value ['{"color":"dark_gray","italic":false,"translate":"potion.withDuration","with":[{"translate":"effect.dsl.denial"},{"translate":"potion.dsl.duration","with":[0,0,0,1]}]}','""','{"translate": "dsl.tooltip","font": "dsl:main","color": "white","italic": false,"with": [{"translate":"pack.dsl","font":"minecraft:default","color":"#833BFF","italic":true}]}']