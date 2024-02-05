ride @s mount @e[type=falling_block,distance=..2,nbt={Time:1,BlockState:{Name:"minecraft:suspicious_gravel"}},limit=1]
execute on vehicle run data modify entity @s BlockState.Name set value "minecraft:snow_block"
data modify entity @s transformation.translation[1] set value -0.48f

tag @s add dsl.suspicious_snow.is_falling