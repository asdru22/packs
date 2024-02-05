tag @s remove dsl.the_hex.assembled_output
playsound dsl:block.the_hex.use block @a[distance=..16]
item modify block ~ ~ ~ container.1 dsl:remove_one
item modify block ~ ~ ~ container.9 dsl:remove_one
item modify block ~ ~ ~ container.10 dsl:remove_one
item modify block ~ ~ ~ container.11 dsl:remove_one
item modify block ~ ~ ~ container.19 dsl:remove_one

execute if block ~ ~ ~ barrel{Items:[{Slot:13b,tag:{dsl:{hex_fuel:true}}}]} run item modify block ~ ~ ~ container.13 dsl:remove_one


data modify storage dsl:storage root.temp.barrel_data[1] set from block ~ ~ ~ Items