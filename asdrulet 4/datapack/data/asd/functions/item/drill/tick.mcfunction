execute store result score d.0 asd.d run data get entity @s SelectedItem.tag.base.Stats.ElectricityUsed
execute if score @s asd.stat.electricity.current >= d.0 asd.d run function asd:item/drill/init