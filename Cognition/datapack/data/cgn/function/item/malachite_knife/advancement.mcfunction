advancement revoke @s only cgn:technical/consume_item/malachite_knife
data remove storage cgn:storage root.temp.item

execute if items entity @s weapon.offhand minecraft:poisonous_potato[minecraft:item_name='{"translate":"item.cgn.malachite_knife"}'] run data modify storage cgn:storage root.temp.item set from entity @s Inventory[{Slot:-106b}]
execute if items entity @s weapon.mainhand minecraft:poisonous_potato[minecraft:item_name='{"translate":"item.cgn.malachite_knife"}'] run data modify storage cgn:storage root.temp.item set from entity @s SelectedItem

data remove storage cgn:macro root
data modify storage cgn:macro root.rotation set from entity @s Rotation

data modify storage cgn:storage root.temp.uuid set from entity @s UUID

execute store success score $mindflare cgn.dummy if items entity @s armor.head minecraft:netherite_helmet[minecraft:item_name='{"translate":"item.cgn.mindflare"}']

execute anchored eyes positioned ^ ^ ^ summon item_display run function cgn:item/malachite_knife/as_item_display with storage cgn:macro root