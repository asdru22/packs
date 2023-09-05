execute if entity @s[nbt={HurtTime:10s}] run function tfp:entity/worm/hurt
data modify storage tfp:storage root.temp.rotation set from entity @s Rotation
execute on passengers run function tfp:entity/worm/move