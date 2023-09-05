tag @s remove gh.setup
data modify entity @s Motion set from storage gh:storage root.temp.trig
scoreboard players operation @s gh.data = $id gh.data