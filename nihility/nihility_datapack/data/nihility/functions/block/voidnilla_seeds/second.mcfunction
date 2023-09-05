execute if block ~ ~ ~ carrots[age=2] run data merge entity @s {Item:{tag:{CustomModelData:6906005}}}
execute if block ~ ~ ~ carrots[age=3] run data merge entity @s {Item:{tag:{CustomModelData:6906005}}}
execute if block ~ ~ ~ carrots[age=4] run data merge entity @s {Item:{tag:{CustomModelData:6906006}}}
execute if block ~ ~ ~ carrots[age=5] run data merge entity @s {Item:{tag:{CustomModelData:6906006}}}
execute if block ~ ~ ~ carrots[age=6] run data merge entity @s {Item:{tag:{CustomModelData:6906006}}}
execute if block ~ ~ ~ carrots[age=7] run data merge entity @s {Item:{tag:{CustomModelData:6906007}}}
execute if block ~ ~ ~ carrots[age=7] run tag @s add nihility.crop.grown

stopsound @a[distance=..16] * entity.glow_item_frame.add_item