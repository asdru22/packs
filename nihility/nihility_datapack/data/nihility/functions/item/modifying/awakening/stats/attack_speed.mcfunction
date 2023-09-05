execute store result score stat nihility.data run data get storage nihility:storage root.temp.item.tag.AttributeModifiers[{AttributeName:"minecraft:generic.attack_speed"}].Amount -10
scoreboard players remove stat nihility.data 40
scoreboard players operation stat nihility.data *= -1 nihility.data
item modify block ~ ~ ~ container.0 nihility:awakening/stats/attack_speed
data modify storage nihility:storage root.temp.lore insert -1 from block ~ ~ ~ Items[0].tag.display.Name