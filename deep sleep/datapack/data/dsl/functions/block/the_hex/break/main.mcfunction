############################################################
# Commands to break a pottery table
############################################################

# Close GUI
function dsl:block/the_hex/tick/close

# Delete Output
data modify storage dsl:storage root.temp.output_item set from entity @s item.tag.stored_barrel_data[1][{Slot:15b}]
data remove storage dsl:storage root.temp.output_item.Slot
scoreboard players set #temp_0 dsl.dummy 0
execute if data entity @s item.tag.stored_barrel_data[1][{Slot:15b}].id as @e[type=item,sort=nearest,distance=..2,tag=!smithed.entity] run function dsl:block/the_hex/break/delete_output

# Spawn particles, items, etc.
execute as @e[tag=!smithed.entity,limit=1,type=item,distance=..3,nbt={PickupDelay:10s,Item:{id:"minecraft:barrel",tag:{display:{Name:'{"color":"white","font":"dsl:main","translate":"block.dsl.the_hex.gui","with":[{"color":"#3F3F3F","font":"minecraft:default","translate":"block.dsl.the_hex"}]}'}}}}] at @s run function dsl:block/the_hex/break/kill_item
particle minecraft:item furnace{CustomModelData:882004} ~ ~0.7 ~ 0.4 0.4 0.4 0.07 100 normal
kill @s
function dsl:block/hopper_updating/undo
