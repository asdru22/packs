# Copy final into a temp holder
data modify storage cotv:storage root.temp.merge.temp1 set from storage cotv:storage root.temp.merge.final
# Reset the original final
data modify storage cotv:storage root.temp.merge.final set value []
# Get its length
execute store result score #finalLength cotv.dummy run data get storage cotv:storage root.temp.merge.temp1

function cotv:recipes/merge/includes_temp