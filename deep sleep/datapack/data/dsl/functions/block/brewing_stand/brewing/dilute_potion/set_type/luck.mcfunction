############################################################
# Modifies the storage for a specific potion type
############################################################

data modify storage dsl:storage root.temp.item.tag.display.Name set value '{"translate":"item.dsl.diluted_potion.effect.luck","italic":false,"color":"white"}'
data modify storage dsl:storage root.temp.item.tag.display.Lore prepend value '{"color":"blue","italic":false,"translate":"potion.withDuration","with":[{"translate":"effect.minecraft.luck"},{"translate":"potion.dsl.duration","with":[0,0,3,0]}]}'
data modify storage dsl:storage root.temp.item.tag.display.Lore append value '{"text":""}'
data modify storage dsl:storage root.temp.item.tag.display.Lore append value '{"color":"dark_purple","italic":false,"translate":"potion.whenDrank"}'
data modify storage dsl:storage root.temp.item.tag.display.Lore append value '{"color":"blue","italic":false,"translate":"attribute.modifier.plus.0","with":[1,{"translate":"attribute.name.generic.luck"}]}'
data modify storage dsl:storage root.temp.item.tag.CustomModelData set value 330209