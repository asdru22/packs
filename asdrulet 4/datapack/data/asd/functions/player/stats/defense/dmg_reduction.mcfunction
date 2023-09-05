execute if data storage asd:data root.temp.equipment.offhand.tag.base.Durability run function asd:item/custom/durability/slots/offhand
execute store result score d.0 asd.d run data get storage asd:data root.temp.equipment.offhand.tag.base.Stats.DamageReduction
execute if data storage asd:data root.temp.equipment.mainhand.tag.base{Type:"shield"} store result score d.0 asd.d run data get storage asd:data root.temp.equipment.mainhand.tag.base.Stats.DamageReduction
execute if data storage asd:data root.temp.equipment.offhand.tag.base{Type:"shield"} store result score d.0 asd.d run data get storage asd:data root.temp.equipment.offhand.tag.base.Stats.DamageReduction

scoreboard players set d.1 asd.d 100
scoreboard players operation d.1 asd.d -= d.0 asd.d

execute if entity @s[scores={asd.using_item=2..10}] run function asd:item/accessory/shield/parry
scoreboard players operation dmg.recived asd.d *= d.1 asd.d
scoreboard players operation dmg.recived asd.d /= const.100 asd.d