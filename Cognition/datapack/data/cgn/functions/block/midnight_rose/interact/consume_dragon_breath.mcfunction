execute if data storage srn:storage root.temp.item.Slot run item modify entity @s weapon.offhand cgn:decrease_count/one
execute unless data storage srn:storage root.temp.item.Slot run item modify entity @s weapon.mainhand cgn:decrease_count/one
give @s glass_bottle