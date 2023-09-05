execute store result score stat nihility.data run data get storage nihility:storage root.temp.item.tag.AttributeModifiers[{AttributeName:"minecraft:generic.armor_toughness"}].Amount
item modify block ~ ~ ~ container.0 nihility:awakening/stats/armor_toughness
data modify storage nihility:storage root.temp.lore insert -1 from block ~ ~ ~ Items[0].tag.display.Name