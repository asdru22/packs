data modify storage asd:data root.temp.equipment.mainhand set from entity @s SelectedItem

execute if data storage asd:data root.temp.equipment.mainhand.tag.base{Type:"magic"} run function asd:item/magic/check
execute if data storage asd:data root.temp.equipment.mainhand.tag.base{Type:"ranged"} run function asd:item/shortbows/check