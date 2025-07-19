data remove storage cgn:storage root.temp.direction
execute if block ~ ~-1 ~ dispenser[facing=up] run return run data modify storage cgn:storage root.temp.direction set value "up"
execute if block ~ ~1 ~ dispenser[facing=down] run return run data modify storage cgn:storage root.temp.direction set value "down"
execute if block ~ ~ ~1 dispenser[facing=north] run return run data modify storage cgn:storage root.temp.direction set value "north"
execute if block ~ ~ ~-1 dispenser[facing=south] run return run data modify storage cgn:storage root.temp.direction set value "south"
execute if block ~1 ~ ~ dispenser[facing=west] run return run data modify storage cgn:storage root.temp.direction set value "west"
execute if block ~-1 ~ ~ dispenser[facing=east] run return run data modify storage cgn:storage root.temp.direction set value "east"