execute unless data storage asd:data root.temp.item.tag.base.Durability.current run function asd:item/custom/durability/lore 
data remove storage asd:data root.temp.item.tag.display.Lore[-1]
execute store result score dur asd.d run data get storage asd:data root.temp.item.tag.base.Durability.current
execute store result storage asd:data root.temp.item.tag.base.Durability.current int 1 run scoreboard players remove dur asd.d 1
execute if score dur asd.d matches ..0 run playsound entity.item.break player @s