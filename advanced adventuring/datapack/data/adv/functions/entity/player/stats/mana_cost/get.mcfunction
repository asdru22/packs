execute store result score $mana adv.data run data get storage adv:storage root.temp.equipment.Mainhand.tag.AttributeModifiers[{AttributeName:"adv:mana_cost"}].Amount 10 

scoreboard players set $perc adv.data 0

execute store result score $temp adv.data run data get storage adv:storage root.temp.equipment.Helmet.tag.AttributeModifiers[{AttributeName:"adv:mana_cost"}].Amount 10 

scoreboard players operation $perc adv.data += $temp adv.data

execute store result score $temp adv.data run data get storage adv:storage root.temp.equipment.Chestplate.tag.AttributeModifiers[{AttributeName:"adv:mana_cost"}].Amount 10 

scoreboard players operation $perc adv.data += $temp adv.data

execute store result score $temp adv.data run data get storage adv:storage root.temp.equipment.Leggings.tag.AttributeModifiers[{AttributeName:"adv:mana_cost"}].Amount 10 

scoreboard players operation $perc adv.data += $temp adv.data

execute store result score $temp adv.data run data get storage adv:storage root.temp.equipment.Boots.tag.AttributeModifiers[{AttributeName:"adv:mana_cost"}].Amount 10 

scoreboard players operation $perc adv.data += $temp adv.data

execute store result score $temp adv.data run data get storage adv:storage root.temp.equipment.Shield.tag.AttributeModifiers[{AttributeName:"adv:mana_cost"}].Amount 10 

scoreboard players operation $perc adv.data += $temp adv.dat

scoreboard players operation $aux adv.data = $mana adv.data 
scoreboard players operation $aux adv.data *= $perc adv.data
scoreboard players operation $aux adv.data /= 1000 adv.data

scoreboard players operation $mana adv.data += $aux adv.data
scoreboard players operation $mana adv.data /= 10 adv.data