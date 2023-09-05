execute store result score .check asd.d run data get storage asd:data root.temp.loot.tag.asd.ids2[-1]
execute if score @s asd.id = .check asd.d run scoreboard players set .found asd.d 1
data remove storage asd:data root.temp.loot.tag.asd.ids2[-1]
execute if score found asd.d matches 0 unless score @s asd.id = .check asd.d if data storage asd:data root.temp.loot.tag.asd.ids2[] run function reg:blocks/chests/loop