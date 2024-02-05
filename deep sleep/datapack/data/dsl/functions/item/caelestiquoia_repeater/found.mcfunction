data remove storage dsl:storage root.temp.proj_found.Count

execute unless data storage dsl:storage root.temp.item.tag.dsl.ammo run data modify storage dsl:storage root.temp.item.tag.dsl.ammo set value []

# remove 1 projectile
execute if data storage dsl:storage root.temp.proj_found{Slot:-106b} run item modify entity @s weapon.offhand dsl:remove_one
execute store result storage dsl:storage root.temp.int.slot int 1 run data get storage dsl:storage root.temp.proj_found.Slot
execute if data storage dsl:storage root.temp.proj_found.Slot run function dsl:item/caelestiquoia_repeater/remove_ammo with storage dsl:storage root.temp.int
data remove storage dsl:storage root.temp.proj_found.Slot
##
data modify storage dsl:storage root.temp.item.tag.dsl.ammo append from storage dsl:storage root.temp.proj_found
## cmd
execute if data storage dsl:storage root.temp.proj_found{id:"minecraft:arrow"} run data modify storage dsl:storage root.temp.item.tag.CustomModelData set value 882000
execute if data storage dsl:storage root.temp.proj_found{id:"minecraft:tipped_arrow"} run data modify storage dsl:storage root.temp.item.tag.CustomModelData set value 882000
execute if data storage dsl:storage root.temp.proj_found{id:"minecraft:spectral_arrow"} run data modify storage dsl:storage root.temp.item.tag.CustomModelData set value 882001
execute if data storage dsl:storage root.temp.proj_found{id:"minecraft:firework_rocket"} run data modify storage dsl:storage root.temp.item.tag.CustomModelData set value 882002
#
execute store result storage dsl:storage root.temp.int.count int 1 run scoreboard players add $temp2 dsl.dummy 1
function dsl:item/caelestiquoia_repeater/lore with storage dsl:storage root.temp.int

execute unless data storage dsl:storage root.temp.item.Slot run item modify entity @s weapon.mainhand dsl:copy_nbt
execute if data storage dsl:storage root.temp.item{Slot:106b} run item modify entity @s weapon.offhand dsl:copy_nbt

tag @s add dsl.release

playsound minecraft:item.crossbow.loading_end player @a[distance=..10]