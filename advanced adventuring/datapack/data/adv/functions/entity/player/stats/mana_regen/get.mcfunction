scoreboard players set $mana_regen adv.data 2

execute store result score $temp adv.data run data get storage adv:storage root.temp.equipment.Helmet.tag.AttributeModifiers[{AttributeName:"adv:mana_regen"}].Amount

scoreboard players operation $mana_regen adv.data += $temp adv.data

execute store result score $temp adv.data run data get storage adv:storage root.temp.equipment.Chestplate.tag.AttributeModifiers[{AttributeName:"adv:mana_regen"}].Amount

scoreboard players operation $mana_regen adv.data += $temp adv.data

execute store result score $temp adv.data run data get storage adv:storage root.temp.equipment.Leggings.tag.AttributeModifiers[{AttributeName:"adv:mana_regen"}].Amount

scoreboard players operation $mana_regen adv.data += $temp adv.data

execute store result score $temp adv.data run data get storage adv:storage root.temp.equipment.Boots.tag.AttributeModifiers[{AttributeName:"adv:mana_regen"}].Amount

scoreboard players operation $mana_regen adv.data += $temp adv.data

execute store result score $temp adv.data run data get storage adv:storage root.temp.equipment.Shield.tag.AttributeModifiers[{AttributeName:"adv:mana_regen"}].Amount

scoreboard players operation $mana_regen adv.data += $temp adv.dat

scoreboard players operation $perc adv.data = @s adv.s.max_mana
scoreboard players operation $perc adv.data *= $mana_regen adv.data
scoreboard players operation $perc adv.data /= 100 adv.data

scoreboard players operation @s adv.s.current_mana += $perc adv.data
function adv:entity/player/stats/mana/calc_percentage