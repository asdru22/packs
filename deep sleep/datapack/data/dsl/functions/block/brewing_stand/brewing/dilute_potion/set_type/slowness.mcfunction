############################################################
# Modifies the storage for a specific potion type
############################################################

data modify storage dsl:storage root.temp.item.tag.display.Name set value '{"translate":"item.dsl.diluted_potion.effect.slowness","italic":false,"color":"white"}'
data modify storage dsl:storage root.temp.item.tag.display.Lore prepend value '{"color":"red","italic":false,"translate":"potion.withDuration","with":[{"translate":"effect.minecraft.slowness"},{"translate":"potion.dsl.duration","with":[0,0,0,9]}]}'
data modify storage dsl:storage root.temp.item.tag.display.Lore append value '{"text":""}'
data modify storage dsl:storage root.temp.item.tag.display.Lore append value '{"color":"dark_purple","italic":false,"translate":"potion.whenDrank"}'
data modify storage dsl:storage root.temp.item.tag.display.Lore append value '{"color":"red","italic":false,"translate":"attribute.modifier.take.1","with":[15,{"translate":"attribute.name.generic.movement_speed"}]}'
data modify storage dsl:storage root.temp.item.tag.CustomModelData set value 330079