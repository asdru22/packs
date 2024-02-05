execute store success score $is_falling dsl.dummy if entity @e[type=falling_block,distance=..2,nbt={Time:1,BlockState:{Name:"minecraft:suspicious_gravel"}}]

execute if score $is_falling dsl.dummy matches 0 run function dsl:block/suspicious_snow/check_gravel
execute if score $is_falling dsl.dummy matches 1 run function dsl:block/suspicious_snow/tansfer_passenger