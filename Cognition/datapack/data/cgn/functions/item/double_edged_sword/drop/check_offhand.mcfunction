execute unless data storage srn:storage root.temp.item.tag.cgn{Slot:-106b} run function cgn:item/double_edged_sword/drop/give_item with storage srn:storage root.temp.item.tag.cgn

execute if data storage srn:storage root.temp.item.tag.cgn{Slot:-106b} run function cgn:item/double_edged_sword/drop/give_item_offhand

playsound minecraft:entity.item.pickup master @a[distance=..16] ~ ~ ~ 0.5