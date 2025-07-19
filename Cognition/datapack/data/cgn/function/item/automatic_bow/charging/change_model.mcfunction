$execute unless data storage cgn:storage root.temp.item.Slot run return run item modify entity @s weapon.mainhand {"function":"minecraft:set_custom_model_data","value":$(model)}

$item modify entity @s weapon.offhand {"function":"minecraft:set_custom_model_data","value":$(model)}