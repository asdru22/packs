############################################################
# Starts the recipe process of a brewing recipe
############################################################

#initial data
data modify storage dsl:storage root.temp.item.tag.CustomPotionColor set value 10238207
data modify storage dsl:storage root.temp.item.tag.Potion set value "minecraft:awkward"
data modify storage dsl:storage root.temp.item.tag.display.Lore set value ['{"color":"blue","italic":false,"translate":"potion.withDuration","with":[{"translate":"effect.dsl.mirage"},{"translate":"potion.dsl.duration","with":[0,0,2,0]}]}','""','{"translate": "dsl.tooltip","font": "dsl:main","color": "white","italic": false,"with": [{"translate":"pack.dsl","font":"minecraft:default","color":"#833BFF","italic":true}]}']
data modify storage dsl:storage root.temp.item.tag.dsl set value {id:"mirage_potion",potion:1b}
data modify storage dsl:storage root.temp.item.tag.HideFlags set value 32
# potion
execute if data storage dsl:storage root.temp.item{id:"minecraft:potion"} run data modify storage dsl:storage root.temp.item.tag.display.Name set value '{"translate":"item.dsl.potion.effect.mirage","italic":false}'
execute if data storage dsl:storage root.temp.item{id:"minecraft:potion"} run data modify storage dsl:storage root.temp.item.tag.custom_potion_effects set value [{id:"minecraft:nausea",amplifier:0b,duration:400},{id:"minecraft:night_vision",amplifier:0b,duration:400}]
# splash potion
execute if data storage dsl:storage root.temp.item{id:"minecraft:splash_potion"} run data modify storage dsl:storage root.temp.item.tag.display.Name set value '{"translate":"item.dsl.splash_potion.effect.mirage","italic":false}'
# lingering potion
execute if data storage dsl:storage root.temp.item{id:"minecraft:lingering_potion"} run data modify storage dsl:storage root.temp.item.tag.custom_potion_effects set value [{id:"minecraft:nausea",amplifier:0b,duration:100},{id:"minecraft:night_vision",amplifier:0b,duration:100}]
execute if data storage dsl:storage root.temp.item{id:"minecraft:lingering_potion"} run data modify storage dsl:storage root.temp.item.tag.display.Name set value '{"translate":"item.dsl.lingering_potion.effect.mirage","italic":false,"color":"white"}'
execute if data storage dsl:storage root.temp.item{id:"minecraft:lingering_potion"} run data modify storage dsl:storage root.temp.item.tag.display.Lore set value ['{"color":"blue","italic":false,"translate":"potion.withDuration","with":[{"translate":"effect.dsl.mirage"},{"translate":"potion.dsl.duration","with":[0,0,0,5]}]}','""','{"translate": "dsl.tooltip","font": "dsl:main","color": "white","italic": false,"with": [{"translate":"pack.dsl","font":"minecraft:default","color":"#833BFF","italic":true}]}']