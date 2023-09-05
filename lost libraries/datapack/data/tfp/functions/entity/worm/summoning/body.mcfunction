data merge entity @s {Invulnerable:1b,NoGravity:1b,Item:{id:"minecraft:structure_block",Count:1b,tag:{CustomModelData:880000}}}

data modify entity @s Owner set from storage tfp:storage root.temp.UUID
data modify storage tfp:storage root.temp.UUID set from entity @s UUID

execute summon item_display run function tfp:entity/worm/summoning/item_display
ride @e[type=item_display,sort=nearest,tag=tfp.worm.display,limit=1,predicate=!tfp:entity/is_riding] mount @s

scoreboard players remove $length tfp.data 1

execute if score $length tfp.data matches 0 summon vex run function tfp:entity/worm/summoning/head
execute if score $length tfp.data matches 1.. summon snowball run function tfp:entity/worm/summoning/body