data modify storage asy:storage root.gen.temp.progress set value 1
data modify storage asy:storage root.gen.temp.id set from block ~ ~ ~ Text1
data modify storage asy:storage root.gen.temp.x set from block ~ ~ ~ x
data modify storage asy:storage root.gen.temp.z set from block ~ ~ ~ z
data modify storage asy:storage root.gen.out insert -1 from storage asy:storage root.gen.temp

