# Copy final into a temp holder
data modify storage nihility:storage root.temp.merge.temp1 set from storage nihility:storage root.temp.merge.final
# Reset the original final
data modify storage nihility:storage root.temp.merge.final set value []
# Get its length
execute store result score #finalLength nihility.data run data get storage nihility:storage root.temp.merge.temp1

function nihility:recipes/merge/includes_temp