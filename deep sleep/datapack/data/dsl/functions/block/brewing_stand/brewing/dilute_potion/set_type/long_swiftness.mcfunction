############################################################
# Modifies the storage for a specific potion type
############################################################

data modify storage dsl:storage root.temp.item.tag.display.Name set value '{"translate":"item.dsl.diluted_potion.effect.swiftness","italic":false,"color":"white"}'
data modify storage dsl:storage root.temp.item.tag.display.Lore prepend value '{"color":"blue","italic":false,"translate":"potion.withDuration","with":[{"translate":"effect.minecraft.speed"},{"translate":"potion.dsl.duration","with":[0,0,4,8]}]}'
data modify storage dsl:storage root.temp.item.tag.display.Lore append value '{"text":""}'
data modify storage dsl:storage root.temp.item.tag.display.Lore append value '{"color":"dark_purple","italic":false,"translate":"potion.whenDrank"}'
data modify storage dsl:storage root.temp.item.tag.display.Lore append value '{"color":"blue","italic":false,"translate":"attribute.modifier.plus.1","with":[20,{"translate":"attribute.name.generic.movement_speed"}]}'
data modify storage dsl:storage root.temp.item.tag.CustomModelData set value 330069