execute unless data storage asd:data root.temp.equipment.mainhand.tag.base{Type:"melee"} run scoreboard players set d.1 asd.d 0

execute if data storage asd:data root.temp.equipment.mainhand.tag{CustomModelData:4,base:{id:"frostspark_blade"}} if predicate asd:player/sneaking if score @s asd.stat.electricity.current matches 50.. run function asd:item/custom/melee/frostspark_blade/main