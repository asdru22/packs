############################################################
# Modifies the storage for a specific potion type
############################################################

data modify storage dsl:storage root.temp.item.tag.display.Name set value '{"translate":"item.dsl.diluted_potion.effect.night_vision","italic":false,"color":"white"}'
data modify storage dsl:storage root.temp.item.tag.display.Lore prepend value '{"color":"blue","italic":false,"translate":"potion.withDuration","with":[{"translate":"effect.minecraft.night_vision"},{"translate":"potion.dsl.duration","with":[0,0,1,8]}]}'
data modify storage dsl:storage root.temp.item.tag.CustomModelData set value 330179