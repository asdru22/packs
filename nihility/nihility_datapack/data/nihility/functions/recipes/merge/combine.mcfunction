# Debug stuff
data merge storage smithed:log {message:'["",{"color":"green","text":"↪ true"}]',level:1,type:'INFO'}
function #smithed:core/pub/technical/tools/log

# Say we found and are combining to the main for_temp loop
scoreboard players set #wasFound nihility.data 1

# Store both lvls
execute store result score #enchLvl nihility.data run data get storage nihility:storage root.temp.merge.temp[-1].lvl
execute store result score #copyLvl nihility.data run data get storage nihility:storage root.temp.merge.temp1[-1].lvl

# If the new data is greater, make that the one present in the list
execute if score #enchLvl nihility.data > #copyLvl nihility.data run data modify storage nihility:storage root.temp.merge.temp1[-1].lvl set from storage nihility:storage root.temp.merge.temp[-1].lvl