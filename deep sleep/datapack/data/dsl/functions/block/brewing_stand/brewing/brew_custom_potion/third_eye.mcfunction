############################################################
# Starts the recipe process of a brewing recipe
############################################################

#initial data
data modify storage dsl:storage root.temp.item.tag.CustomPotionColor set value 9109429
data modify storage dsl:storage root.temp.item.tag.Potion set value "minecraft:mundane"
data modify storage dsl:storage root.temp.item.tag.dsl set value {id:"third_eye_potion",potion:1b}
data modify storage dsl:storage root.temp.item.tag.custom_potion_effects set value []
data modify storage dsl:storage root.temp.item.tag.HideFlags set value 32
# potion
execute if data storage dsl:storage root.temp.item{id:"minecraft:potion"} run data modify storage dsl:storage root.temp.item.tag.display.Name set value '{"translate":"item.dsl.potion.effect.third_eye","italic":false,"color":"white"}'
execute if data storage dsl:storage root.temp.item{id:"minecraft:potion"} run data modify storage dsl:storage root.temp.item.tag.display.Lore set value ['{"color":"blue","italic":false,"translate":"potion.withDuration","with":[{"translate":"effect.dsl.third_eye"},{"translate":"potion.dsl.duration","with":[1,2,0,0]}]}','""','{"translate": "dsl.tooltip","font": "dsl:main","color": "white","italic": false,"with": [{"translate":"pack.dsl","font":"minecraft:default","color":"#833BFF","italic":true}]}']
execute unless data storage dsl:storage root.temp.item{id:"minecraft:potion"} run data modify storage dsl:storage root.temp.item.tag.display.Lore set value ['{"color":"dark_gray","italic":false,"translate":"potion.withDuration","with":[{"translate":"effect.dsl.third_eye"},{"translate":"potion.dsl.duration","with":[1,2,0,0]}]}','""','{"translate": "dsl.tooltip","font": "dsl:main","color": "white","italic": false,"with": [{"translate":"pack.dsl","font":"minecraft:default","color":"#833BFF","italic":true}]}']


# splash potion
execute if data storage dsl:storage root.temp.item{id:"minecraft:splash_potion"} run data modify storage dsl:storage root.temp.item.tag.display.Name set value '{"translate":"item.dsl.splash_potion.effect.third_eye","italic":false}'
# lingering potion
execute if data storage dsl:storage root.temp.item{id:"minecraft:lingering_potion"} run data modify storage dsl:storage root.temp.item.tag.display.Name set value '{"translate":"item.dsl.lingering_potion.effect.third_eye","italic":false}'