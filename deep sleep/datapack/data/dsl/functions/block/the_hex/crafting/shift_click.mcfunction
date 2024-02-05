execute if data storage dsl:storage root.temp.barrel_data[1][{Slot:0b,tag:{dsl:{hex_fuel:true}}}] unless data storage dsl:storage root.temp.barrel_data[1][{Slot:13b}] run data modify storage dsl:storage root.temp.barrel_data[1][{Slot:0b}].Slot set value 13b

execute unless data storage dsl:storage root.temp.barrel_data[1][{Slot:1b}] run data modify storage dsl:storage root.temp.barrel_data[1][{Slot:0b}].Slot set value 1b
execute unless data storage dsl:storage root.temp.barrel_data[1][{Slot:9b}] run data modify storage dsl:storage root.temp.barrel_data[1][{Slot:0b}].Slot set value 9b
execute unless data storage dsl:storage root.temp.barrel_data[1][{Slot:10b}] run data modify storage dsl:storage root.temp.barrel_data[1][{Slot:0b}].Slot set value 10b
execute unless data storage dsl:storage root.temp.barrel_data[1][{Slot:11b}] run data modify storage dsl:storage root.temp.barrel_data[1][{Slot:0b}].Slot set value 11b
execute unless data storage dsl:storage root.temp.barrel_data[1][{Slot:19b}] run data modify storage dsl:storage root.temp.barrel_data[1][{Slot:0b}].Slot set value 19b
data modify block ~ ~ ~ Items set from storage dsl:storage root.temp.barrel_data[1]