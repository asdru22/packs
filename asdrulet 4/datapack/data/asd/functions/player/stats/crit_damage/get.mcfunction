scoreboard players operation s.crit_damage asd.d = @s asd.stat.crit_damage.base
#get mainhand item
execute store result score d.0 asd.d run data get storage asd:data root.temp.equipment.mainhand.tag.base.Stats.CritDamage
execute if score @s asd.xp.level >= lvl.mainhand asd.d if data storage asd:data root.temp.equipment.mainhand.tag.base run scoreboard players operation s.crit_damage asd.d += d.0 asd.d
#get offhand item
execute store result score d.0 asd.d run data get storage asd:data root.temp.equipment.offhand.tag.base.Stats.CritDamage 
execute if score @s asd.xp.level >= lvl.offhand asd.d if data storage asd:data root.temp.equipment.offhand.tag.base run scoreboard players operation s.crit_damage asd.d += d.0 asd.d
#get head item
execute store result score d.0 asd.d run data get storage asd:data root.temp.equipment.head.tag.base.Stats.CritDamage 
execute if score @s asd.xp.level >= lvl.head asd.d run scoreboard players operation s.crit_damage asd.d += d.0 asd.d
#get chest item
execute store result score d.0 asd.d run data get storage asd:data root.temp.equipment.chest.tag.base.Stats.CritDamage 
execute if score @s asd.xp.level >= lvl.chest asd.d run scoreboard players operation s.crit_damage asd.d += d.0 asd.d
#get legs item
execute store result score d.0 asd.d run data get storage asd:data root.temp.equipment.legs.tag.base.Stats.CritDamage 
execute if score @s asd.xp.level >= lvl.legs asd.d run scoreboard players operation s.crit_damage asd.d += d.0 asd.d
#get feet item
execute store result score d.0 asd.d run data get storage asd:data root.temp.equipment.feet.tag.base.Stats.CritDamage 
execute if score @s asd.xp.level >= lvl.feet asd.d run scoreboard players operation s.crit_damage asd.d += d.0 asd.d
#acc 1
execute store result score d.0 asd.d run data get storage asd:data root.temp.equipment.Accessories[0].tag.base.Stats.CritDamage 
execute if score @s asd.xp.level >= lvl.acc1 asd.d run scoreboard players operation s.crit_damage asd.d += d.0 asd.d
#acc 2
execute store result score d.0 asd.d run data get storage asd:data root.temp.equipment.Accessories[1].tag.base.Stats.CritDamage 
execute if score @s asd.xp.level >= lvl.acc2 asd.d run scoreboard players operation s.crit_damage asd.d += d.0 asd.d
#acc 3
execute store result score d.0 asd.d run data get storage asd:data root.temp.equipment.Accessories[2].tag.base.Stats.CritDamage 
execute if score @s asd.xp.level >= lvl.acc3 asd.d run scoreboard players operation s.crit_damage asd.d += d.0 asd.d

tellraw @s[tag=asd.dmg_out] ["->| Overall crit damage stat: ",{"score":{"name": "s.crit_damage","objective": "asd.d"}}]

scoreboard players set .crit asd.d 1
scoreboard players operation d.0 asd.d = s.damage asd.d
scoreboard players operation d.0 asd.d *= s.crit_damage asd.d
scoreboard players operation d.0 asd.d /= const.100 asd.d
scoreboard players operation s.damage asd.d += d.0 asd.d
execute if data storage asd:data root.temp.attack.type{Type:"melee"} run data modify storage asd:data root.temp.attack.type.display set value '{"text":"\\u003c","font":"asd:main"}' 
execute if data storage asd:data root.temp.attack.type{Type:"ranged"} run data modify storage asd:data root.temp.attack.type.display set value '{"text":"\\u003d","font":"asd:main"}' 
execute if data storage asd:data root.temp.attack.type{Type:"magic"} run data modify storage asd:data root.temp.attack.type.display set value '{"text":"\\u003e","font":"asd:main"}' 