# Copy current target into a holder
data modify storage nihility:storage root.temp.merge.tempId set from storage nihility:storage root.temp.merge.temp1[-1].id
# Try to overwrite it
execute store success score #success nihility.data run data modify storage nihility:storage root.temp.merge.tempId set from storage nihility:storage root.temp.merge.temp[-1].id

# Debug stuff
data merge storage smithed:log {message:'["Does ",{"color":"yellow","nbt":"root.temp.merge.temp[-1].id","storage":"nihility:storage"}," == ",{"color":"yellow","nbt":"root.temp.merge.temp1[-1].id","storage":"nihility:storage"},"?"]',level:1,type:'INFO'}
function #smithed:core/pub/technical/tools/log

# If the copy fails (both id's are the same) combine them
execute if score #success nihility.data matches 0 run function nihility:recipes/merge/combine
# Otherwise say it failed for debugging
execute unless score #success nihility.data matches 0 run function nihility:recipes/merge/combine/1

# Iterate shit + adding stuff back to the output
data modify storage nihility:storage root.temp.merge.final prepend from storage nihility:storage root.temp.merge.temp1[-1]
data remove storage nihility:storage root.temp.merge.temp1[-1]
scoreboard players remove #finalLength nihility.data 1
execute if score #finalLength nihility.data matches 1.. run function nihility:recipes/merge/includes_temp
