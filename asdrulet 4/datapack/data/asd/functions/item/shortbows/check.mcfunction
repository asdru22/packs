execute store result score d.1 asd.d run data get storage asd:data root.temp.equipment.mainhand.tag.base.LevelRequired
execute store result score d.0 asd.d run clear @s #arrows 0
execute if score @s[scores={asd.ability_cooldown=0}] asd.xp.level >= d.1 asd.d if score d.0 asd.d matches 1.. run function asd:item/shortbows/main