execute if score $moon_cycle aar.int matches 0 run data modify storage aar:storage root.temp.int set value "2.5"
execute if score $moon_cycle aar.int matches 1 run data modify storage aar:storage root.temp.int set value "2"
execute if score $moon_cycle aar.int matches 2 run data modify storage aar:storage root.temp.int set value "1.5"
execute if score $moon_cycle aar.int matches 3 run data modify storage aar:storage root.temp.int set value "1"
execute if score $moon_cycle aar.int matches 4 run data modify storage aar:storage root.temp.int set value "0"
execute if score $moon_cycle aar.int matches 5 run data modify storage aar:storage root.temp.int set value "1"
execute if score $moon_cycle aar.int matches 6 run data modify storage aar:storage root.temp.int set value "1.5"
execute if score $moon_cycle aar.int matches 7 run data modify storage aar:storage root.temp.int set value "2"

function aar:item/lunar_trinket/attribute with storage aar:storage root.temp