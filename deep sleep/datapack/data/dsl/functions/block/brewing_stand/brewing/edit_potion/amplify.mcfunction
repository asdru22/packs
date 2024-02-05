############################################################
# Commands to edit an existing custom potion in the brewing stand
############################################################

data remove storage dsl:storage root.temp.item.tag.dsl.potion.can_amplify
data remove storage dsl:storage root.temp.item.tag.dsl.potion.can_extend
execute if data storage dsl:storage root.temp.item.tag.dsl.potion{id:"dsl:fortitude"} run data modify storage dsl:storage root.temp.item.tag.CustomPotionEffects set value [{Id:21,Amplifier:1b,Duration:1800}]
execute if data storage dsl:storage root.temp.item{tag:{dsl:{potion:{id:"dsl:fortitude"}}},id:"minecraft:lingering_potion"} run data modify storage dsl:storage root.temp.item.tag.CustomPotionEffects set value [{Id:21,Amplifier:1b,Duration:440}]
execute if data storage dsl:storage root.temp.item{tag:{dsl:{potion:{id:"dsl:fortitude"}}},id:"minecraft:lingering_potion"} run data modify storage dsl:storage root.temp.item.tag.display.Lore set value ['{"color":"blue","italic":false,"translate":"potion.withDuration","with":[{"translate":"potion.withAmplifier","with":[{"translate":"effect.minecraft.health_boost"},{"translate":"potion.potency.1"}]},{"translate":"potion.dsl.duration","with":[0,0,2,2]}]}','{"text":""}','{"color":"dark_purple","italic":false,"translate":"potion.whenDrank"}','{"color":"blue","italic":false,"translate":"attribute.modifier.plus.0","with":[8,{"translate":"attribute.name.generic.max_health"}]}','{"translate":"pack.dsl","color":"#008725"}']
execute if data storage dsl:storage root.temp.item.tag.dsl.potion{id:"dsl:fortitude"} run data modify storage dsl:storage root.temp.item.tag.dsl.potion.id set value "dsl:strong_fortitude"
