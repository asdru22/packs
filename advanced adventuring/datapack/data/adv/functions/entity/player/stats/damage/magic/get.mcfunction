execute store result score $damage adv.data run data get storage adv:storage root.temp.equipment.Mainhand.tag.AttributeModifiers[{AttributeName:"adv:magic_damage"}].Amount 10 

execute store result score $temp adv.data run data get storage adv:storage root.temp.equipment.Helmet.tag.AttributeModifiers[{AttributeName:"adv:magic_damage"}].Amount 10 
scoreboard players operation $damage adv.data += $temp adv.data

execute store result score $temp adv.data run data get storage adv:storage root.temp.equipment.Chestplate.tag.AttributeModifiers[{AttributeName:"adv:magic_damage"}].Amount 10 
scoreboard players operation $damage adv.data += $temp adv.data

execute store result score $temp adv.data run data get storage adv:storage root.temp.equipment.Leggings.tag.AttributeModifiers[{AttributeName:"adv:magic_damage"}].Amount 10 
scoreboard players operation $damage adv.data += $temp adv.data

execute store result score $temp adv.data run data get storage adv:storage root.temp.equipment.Boots.tag.AttributeModifiers[{AttributeName:"adv:magic_damage"}].Amount 10 
scoreboard players operation $damage adv.data += $temp adv.data

execute store result score $temp adv.data run data get storage adv:storage root.temp.equipment.Shield.tag.AttributeModifiers[{AttributeName:"adv:magic_damage"}].Amount 10 
scoreboard players operation $damage adv.data += $temp adv.data

execute if score $debug adv.data matches 1 run tellraw @a [{"text":"Magic Damage: "},{"score":{"name":"$damage","objective":"adv.data"}}]