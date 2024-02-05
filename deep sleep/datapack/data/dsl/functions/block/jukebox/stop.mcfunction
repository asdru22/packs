data remove storage ded:storage root.temp.item
data modify storage ded:storage root.temp.item set from entity @e[type=item,sort=nearest,limit=1,nbt={Age:0s}] Item
function dsl:block/jukebox/stop_discs
kill @s