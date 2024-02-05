scoreboard players reset @s dsl.use_crossbow
# get item
data modify storage dsl:storage root.temp.item set from entity @s Inventory[{Slot:-106b,id:"minecraft:crossbow",tag:{dsl:{id:"caelestiquoia_repeater"}}}]
data modify storage dsl:storage root.temp.item set from entity @s SelectedItem{id:"minecraft:crossbow",tag:{dsl:{id:"caelestiquoia_repeater"}}}
# get and remove arrow
data modify storage dsl:storage root.temp.ammo set from storage dsl:storage root.temp.item.tag.dsl.ammo[0]
data remove storage dsl:storage root.temp.item.tag.dsl.ammo[0]
function dsl:item/caelestiquoia_repeater/use/projectile
# check multishot
execute if data storage dsl:storage root.temp.item.tag.Enchantments[{id:"minecraft:multishot"}] run function dsl:item/caelestiquoia_repeater/use/multishot
# lore
execute unless data storage dsl:storage root.temp.int{count:0} run function dsl:item/caelestiquoia_repeater/use/add_fake_arrow
execute store result storage dsl:storage root.temp.int.count int 1 if data storage dsl:storage root.temp.item.tag.dsl.ammo[]
function dsl:item/caelestiquoia_repeater/lore with storage dsl:storage root.temp.int

# update data
execute unless data storage dsl:storage root.temp.item.Slot run item modify entity @s weapon.mainhand dsl:copy_nbt
execute if data storage dsl:storage root.temp.item{Slot:106b} run item modify entity @s weapon.offhand dsl:copy_nbt
# sounds
playsound minecraft:item.crossbow.shoot player @a[distance=..10]
# durability
execute if data storage dsl:storage root.temp.item.Slot run function dsl:item/vanilla/durability/damage_generic_amount/offhand_1
execute unless data storage dsl:storage root.temp.item.Slot run function dsl:item/vanilla/durability/damage_generic_amount/mainhand_1