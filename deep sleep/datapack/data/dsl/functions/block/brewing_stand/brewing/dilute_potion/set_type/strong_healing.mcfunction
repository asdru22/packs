############################################################
# Modifies the storage for a specific potion type
############################################################

data modify storage dsl:storage root.temp.item.tag.display.Name set value '{"translate":"item.dsl.diluted_potion.effect.healing","italic":false,"color":"white"}'
data modify storage dsl:storage root.temp.item.tag.display.Lore prepend value '{"color":"blue","italic":false,"translate":"effect.dsl.minor_instant_health"}'
data modify storage dsl:storage root.temp.item.tag.dsl.potion.uses set value [8,8]
data modify storage dsl:storage root.temp.item.tag.display.Lore[1] set value '{"translate":"item.dsl.diluted_potion.uses","color":"gray","italic":false,"with":[8,8]}'
data modify storage dsl:storage root.temp.item.tag.CustomModelData set value 330097
data modify storage dsl:storage root.temp.item.tag.dsl.potion.id set value "minecraft:healing"