data modify entity @s Owner set from storage tfp:storage root.temp.UUID
data merge entity @s {Tags:["tfp.worm.link","tfp.entity","tfp.tick"],Invulnerable:1b,NoGravity:1b,Item:{id:"minecraft:structure_block",Count:1b,tag:{CustomModelData:880000}}}
scoreboard players operation @s tfp.id = #mob_ids tfp.data