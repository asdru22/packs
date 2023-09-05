execute store result score $temp adv.data run data get storage adv:storage root.temp.equipment.Mainhand.tag.AttributeModifiers[{AttributeName:"adv:ranged_damage"}].Amount 
scoreboard players operation $damage adv.data += $temp adv.data

execute store result score $temp adv.data run data get storage adv:storage root.temp.equipment.Helmet.tag.AttributeModifiers[{AttributeName:"adv:ranged_damage"}].Amount 
scoreboard players operation $damage adv.data += $temp adv.data

execute store result score $temp adv.data run data get storage adv:storage root.temp.equipment.Chestplate.tag.AttributeModifiers[{AttributeName:"adv:ranged_damage"}].Amount 
scoreboard players operation $damage adv.data += $temp adv.data

execute store result score $temp adv.data run data get storage adv:storage root.temp.equipment.Leggings.tag.AttributeModifiers[{AttributeName:"adv:ranged_damage"}].Amount 
scoreboard players operation $damage adv.data += $temp adv.data

execute store result score $temp adv.data run data get storage adv:storage root.temp.equipment.Boots.tag.AttributeModifiers[{AttributeName:"adv:ranged_damage"}].Amount 
scoreboard players operation $damage adv.data += $temp adv.data

execute store result score $temp adv.data run data get storage adv:storage root.temp.equipment.Shield.tag.AttributeModifiers[{AttributeName:"adv:ranged_damage"}].Amount 
scoreboard players operation $damage adv.data += $temp adv.data