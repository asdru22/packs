scoreboard players set $mana adv.data 200

execute store result score $temp adv.data run data get storage adv:storage root.temp.equipment.Helmet.tag.AttributeModifiers[{AttributeName:"adv:max_mana"}].Amount 10 

scoreboard players operation $mana adv.data += $temp adv.data

execute store result score $temp adv.data run data get storage adv:storage root.temp.equipment.Chestplate.tag.AttributeModifiers[{AttributeName:"adv:max_mana"}].Amount 10 

scoreboard players operation $mana adv.data += $temp adv.data

execute store result score $temp adv.data run data get storage adv:storage root.temp.equipment.Leggings.tag.AttributeModifiers[{AttributeName:"adv:max_mana"}].Amount 10 

scoreboard players operation $mana adv.data += $temp adv.data

execute store result score $temp adv.data run data get storage adv:storage root.temp.equipment.Boots.tag.AttributeModifiers[{AttributeName:"adv:max_mana"}].Amount 10 

scoreboard players operation $mana adv.data += $temp adv.data

execute store result score $temp adv.data run data get storage adv:storage root.temp.equipment.Shield.tag.AttributeModifiers[{AttributeName:"adv:max_mana"}].Amount 10 

scoreboard players operation $mana adv.data += $temp adv.dat

scoreboard players operation @s adv.s.max_mana = $mana adv.data

execute if score @s adv.s.current_mana > @s adv.s.max_mana run scoreboard players operation @s adv.s.current_mana = @s adv.s.max_mana