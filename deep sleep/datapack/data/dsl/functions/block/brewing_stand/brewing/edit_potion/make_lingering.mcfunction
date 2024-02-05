############################################################
# Commands to edit an existing custom potion in the brewing stand
############################################################

data modify storage dsl:storage root.temp.item.id set value "minecraft:lingering_potion"

execute if data storage dsl:storage root.temp.item.tag.dsl{id:"mirage_potion"} run data modify storage dsl:storage root.temp.item.tag.display.Name set value '{"translate":"item.dsl.lingering_potion.effect.mirage","italic":false}'
execute if data storage dsl:storage root.temp.item.tag.dsl{id:"mirage_potion"} run data modify storage dsl:storage root.temp.item.tag.CustomPotionEffects set value [{id:"minecraft:nausea",amplifier:0b,duration:100},{id:"minecraft:night_vision",amplifier:0b,duration:100}]
execute if data storage dsl:storage root.temp.item.tag.dsl{id:"mirage_potion"} run data modify storage dsl:storage root.temp.item.tag.display.Lore set value ['{"color":"blue","italic":false,"translate":"potion.withDuration","with":[{"translate":"effect.dsl.mirage"},{"translate":"potion.dsl.duration","with":[0,0,0,5]}]}','""','{"translate": "dsl.tooltip","font": "dsl:main","color": "white","italic": false,"with": [{"translate":"pack.dsl","font":"minecraft:default","color":"#833BFF","italic":true}]}']

execute if data storage dsl:storage root.temp.item.tag.dsl{id:"third_eye_potion"} run data modify storage dsl:storage root.temp.item.tag.display.Name set value '{"translate":"item.dsl.lingering_potion.effect.third_eye","italic":false}'
execute if data storage dsl:storage root.temp.item.tag.dsl{id:"third_eye_potion"} run data modify storage dsl:storage root.temp.item.tag.display.Lore set value ['{"color":"dark_gray","italic":false,"translate":"potion.withDuration","with":[{"translate":"effect.dsl.third_eye"},{"translate":"potion.dsl.duration","with":[1,2,0,0]}]}','""','{"translate": "dsl.tooltip","font": "dsl:main","color": "white","italic": false,"with": [{"translate":"pack.dsl","font":"minecraft:default","color":"#833BFF","italic":true}]}']

execute if data storage dsl:storage root.temp.item.tag.dsl{id:"denial_potion"} run data modify storage dsl:storage root.temp.item.tag.display.Name set value '{"translate":"item.dsl.lingering_potion.effect.denial","italic":false}'
execute if data storage dsl:storage root.temp.item.tag.dsl{id:"denial_potion"} run data modify storage dsl:storage root.temp.item.tag.display.Lore set value ['{"color":"dark_gray","italic":false,"translate":"potion.withDuration","with":[{"translate":"effect.dsl.denial"},{"translate":"potion.dsl.duration","with":[0,0,0,1]}]}','""','{"translate": "dsl.tooltip","font": "dsl:main","color": "white","italic": false,"with": [{"translate":"pack.dsl","font":"minecraft:default","color":"#833BFF","italic":true}]}']