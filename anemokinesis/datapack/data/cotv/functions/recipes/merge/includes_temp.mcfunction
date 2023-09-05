# Copy current target into a holder
data modify storage cotv:storage root.temp.merge.tempId set from storage cotv:storage root.temp.merge.temp1[-1].id
# Try to overwrite it
execute store success score #success cotv.dummy run data modify storage cotv:storage root.temp.merge.tempId set from storage cotv:storage root.temp.merge.temp[-1].id

# Debug stuff
data merge storage smithed:log {message:'["Does ",{"color":"yellow","nbt":"root.temp.merge.temp[-1].id","storage":"cotv:storage"}," == ",{"color":"yellow","nbt":"root.temp.merge.temp1[-1].id","storage":"cotv:storage"},"?"]',level:1,type:'INFO'}
function #smithed:core/pub/technical/tools/log

# If the copy fails (both id's are the same) combine them
execute if score #success cotv.dummy matches 0 run function cotv:recipes/merge/combine
# Otherwise say it failed for debugging
execute unless score #success cotv.dummy matches 0 run function cotv:recipes/merge/combine/1

# Iterate shit + adding stuff back to the output
data modify storage cotv:storage root.temp.merge.final prepend from storage cotv:storage root.temp.merge.temp1[-1]
data remove storage cotv:storage root.temp.merge.temp1[-1]
scoreboard players remove #finalLength cotv.dummy 1
execute if score #finalLength cotv.dummy matches 1.. run function cotv:recipes/merge/includes_temp
