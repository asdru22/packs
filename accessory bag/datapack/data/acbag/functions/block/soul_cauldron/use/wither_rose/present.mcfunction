execute store result score .count acbag.dummy run data get storage acbag:storage root.temp.cauldron.Items[{id:"minecraft:wither_rose"}].Count
scoreboard players add .count acbag.dummy 1
execute store result storage acbag:storage root.temp.cauldron.Items[{id:"minecraft:wither_rose"}].Count byte 1 run scoreboard players get .count acbag.dummy