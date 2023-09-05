execute unless data storage gh:storage root.temp.item.Slot run item replace entity @s weapon.mainhand with air
execute if data storage gh:storage root.temp.item.Slot run item replace entity @s weapon.mainhand with air

execute anchored eyes run particle item shield{CustomModelData:6900000} ^ ^-0.2 ^.3 0.3 0.3 0.3 0 5 normal @s
playsound entity.item.break player @s ~ ~ ~