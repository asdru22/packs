execute store result storage cgn:storage root.temp.item.tag.cgn.charge.amount int 0.99 run data get storage cgn:storage root.temp.item.tag.cgn.charge.amount

function cgn:item/chargeable_armor/modify/lore with storage cgn:storage root.temp.item.tag.cgn.charge

execute if data storage cgn:storage root.temp.item.tag.cgn.charge{amount:0} run function cgn:item/chargeable_armor/modify_armor/remove_charge