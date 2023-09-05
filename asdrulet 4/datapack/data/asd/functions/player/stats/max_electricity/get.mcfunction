scoreboard players operation s.max_electricity asd.d = @s asd.stat.electricity.base

#get mainhand item
execute store result score d.0 asd.d run data get storage asd:data root.temp.equipment.mainhand.tag.base.Stats.MaxElectricity
execute if score @s asd.xp.level >= lvl.mainhand asd.d if data storage asd:data root.temp.equipment.mainhand.tag.base run scoreboard players operation s.max_electricity asd.d += d.0 asd.d
#get offhand item
execute store result score d.0 asd.d run data get storage asd:data root.temp.equipment.offhand.tag.base.Stats.MaxElectricity 
execute if score @s asd.xp.level >= lvl.offhand asd.d if data storage asd:data root.temp.equipment.offhand.tag.base run scoreboard players operation s.max_electricity asd.d += d.0 asd.d
#get head item
execute store result score d.0 asd.d run data get storage asd:data root.temp.equipment.head.tag.base.Stats.MaxElectricity 
execute if score @s asd.xp.level >= lvl.head asd.d run scoreboard players operation s.max_electricity asd.d += d.0 asd.d
#get chest item
execute store result score d.0 asd.d run data get storage asd:data root.temp.equipment.chest.tag.base.Stats.MaxElectricity 
execute if score @s asd.xp.level >= lvl.chest asd.d run scoreboard players operation s.max_electricity asd.d += d.0 asd.d
#get legs item
execute store result score d.0 asd.d run data get storage asd:data root.temp.equipment.legs.tag.base.Stats.MaxElectricity 
execute if score @s asd.xp.level >= lvl.legs asd.d run scoreboard players operation s.max_electricity asd.d += d.0 asd.d
#get feet item
execute store result score d.0 asd.d run data get storage asd:data root.temp.equipment.feet.tag.base.Stats.MaxElectricity 
execute if score @s asd.xp.level >= lvl.feet asd.d run scoreboard players operation s.max_electricity asd.d += d.0 asd.d
#acc 1
execute store result score d.0 asd.d run data get storage asd:data root.temp.equipment.Accessories[0].tag.base.Stats.MaxElectricity 
execute if score @s asd.xp.level >= lvl.acc1 asd.d run scoreboard players operation s.max_electricity asd.d += d.0 asd.d
#acc 2
execute store result score d.0 asd.d run data get storage asd:data root.temp.equipment.Accessories[1].tag.base.Stats.MaxElectricity 
execute if score @s asd.xp.level >= lvl.acc2 asd.d run scoreboard players operation s.max_electricity asd.d += d.0 asd.d
#acc 3
execute store result score d.0 asd.d run data get storage asd:data root.temp.equipment.Accessories[2].tag.base.Stats.MaxElectricity 
execute if score @s asd.xp.level >= lvl.acc3 asd.d run scoreboard players operation s.max_electricity asd.d += d.0 asd.d

scoreboard players operation @s asd.stat.electricity.max = s.max_electricity asd.d
execute if score @s asd.stat.electricity.current > @s asd.stat.electricity.max run scoreboard players operation @s asd.stat.electricity.current = @s asd.stat.electricity.max 