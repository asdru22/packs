execute if entity @s[tag=!cotv.temp,scores={cotv.void_tolerance=100..},nbt={SelectedItem:{tag:{CustomModelData:6901000}}}] run function cotv:item/umbral_configuration/fill

execute if entity @s[tag=!cotv.temp,scores={cotv.void_tolerance=..900},nbt={SelectedItem:{tag:{CustomModelData:6901001}}}] run function cotv:item/umbral_configuration/empty

tag @s remove cotv.temp

execute if entity @s[scores={cotv.void_tolerance=501..}] run function cotv:item/umbral_configuration/remove_debuffs
execute if entity @s[scores={cotv.void_tolerance=..500}] run function cotv:player/loose_void_tolerance/roll_negative_effects