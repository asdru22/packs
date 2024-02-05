############################################################
# Modifies the storage for a specific potion type
############################################################

data modify storage dsl:storage root.temp.item.tag.display.Name set value '{"translate":"item.dsl.diluted_potion.effect.leaping","italic":false,"color":"white"}'
data modify storage dsl:storage root.temp.item.tag.display.Lore prepend value '{"color":"blue","italic":false,"translate":"potion.withDuration","with":[{"translate":"potion.withAmplifier","with":[{"translate":"effect.minecraft.jump_boost"},{"translate":"potion.potency.1"}]},{"translate":"potion.dsl.duration","with":[0,0,0,9]}]}'
data modify storage dsl:storage root.temp.item.tag.CustomModelData set value 330119