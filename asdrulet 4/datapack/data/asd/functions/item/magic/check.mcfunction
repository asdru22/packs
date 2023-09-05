execute store result score d.0 asd.d run data get storage asd:data root.temp.equipment.mainhand.tag.base.Stats.ElectricityUsed
execute store result score d.1 asd.d run data get storage asd:data root.temp.equipment.mainhand.tag.base.LevelRequired
execute if score @s asd.xp.level >= d.1 asd.d if score @s asd.stat.electricity.current >= d.0 asd.d run function asd:item/magic/main