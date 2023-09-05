# Debug stuff
data merge storage smithed:log {message:'["",{"color":"green","text":"↪ true"}]',level:1,type:'INFO'}
function #smithed:core/pub/technical/tools/log

# Say we found and are combining to the main for_temp loop
scoreboard players set #wasFound cotv.dummy 1

# Store both lvls
execute store result score #enchLvl cotv.dummy run data get storage cotv:storage root.temp.merge.temp[-1].lvl
execute store result score #copyLvl cotv.dummy run data get storage cotv:storage root.temp.merge.temp1[-1].lvl

# If the new data is greater, make that the one present in the list
execute if score #enchLvl cotv.dummy > #copyLvl cotv.dummy run data modify storage cotv:storage root.temp.merge.temp1[-1].lvl set from storage cotv:storage root.temp.merge.temp[-1].lvl