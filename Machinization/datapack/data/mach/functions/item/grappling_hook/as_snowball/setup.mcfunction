## setup
tag @s remove mach.setup
scoreboard players operation @s mach.data = $temp_id mach.data
## data transfer
data modify entity @s Owner set from storage mach:storage root.temp.item.uuid


execute store result score $x mach.data run data get storage mach:storage root.temp.item.pmotion[0] 50
execute store result score $y mach.data run data get storage mach:storage root.temp.item.pmotion[1] 50
execute store result score $z mach.data run data get storage mach:storage root.temp.item.pmotion[2] 50

execute store result score $x2 mach.data run data get storage mach:storage root.temp.motion[0] 100
execute store result score $y2 mach.data run data get storage mach:storage root.temp.motion[1] 100
execute store result score $z2 mach.data run data get storage mach:storage root.temp.motion[2] 100

execute store result entity @s Motion[0] double 0.01 run scoreboard players operation $x mach.data += $x2 mach.data 
execute store result entity @s Motion[1] double 0.01 run scoreboard players operation $y mach.data += $y2 mach.data 
execute store result entity @s Motion[2] double 0.01 run scoreboard players operation $z mach.data += $z2 mach.data 