## light damage
execute store result score stat nihility.data run data get storage nihility:storage root.temp.item.tag.nihility.stats.damage
execute unless score stat nihility.data matches 0 run function nihility:item/modifying/awakening/stats/light_damage
## melee damage
execute if data storage nihility:storage root.temp.item.tag.AttributeModifiers[{AttributeName:"minecraft:generic.attack_damage"}] run function nihility:item/modifying/awakening/stats/attack_damage
## attack speed
execute if data storage nihility:storage root.temp.item.tag.AttributeModifiers[{AttributeName:"minecraft:generic.attack_speed"}] run function nihility:item/modifying/awakening/stats/attack_speed
## attack speed
execute if data storage nihility:storage root.temp.item.tag.AttributeModifiers[{AttributeName:"minecraft:generic.max_health"}] run function nihility:item/modifying/awakening/stats/max_health
execute if data storage nihility:storage root.temp.item.tag.AttributeModifiers[{AttributeName:"minecraft:generic.armor"}] run function nihility:item/modifying/awakening/stats/armor
execute if data storage nihility:storage root.temp.item.tag.AttributeModifiers[{AttributeName:"minecraft:generic.armor_toughness"}] run function nihility:item/modifying/awakening/stats/armor_toughness
execute if data storage nihility:storage root.temp.item.tag.AttributeModifiers[{AttributeName:"minecraft:generic.knockback_resistance"}] run function nihility:item/modifying/awakening/stats/knockback_resistance
execute if data storage nihility:storage root.temp.item.tag.AttributeModifiers[{AttributeName:"minecraft:generic.movement_speed"}] run function nihility:item/modifying/awakening/stats/movement_speed