data modify storage cgn:storage root.temp.item set from entity @s ArmorItems[1]
function cgn:item/chargeable_armor/modify/main
data modify entity @s ArmorItems[1] set from storage cgn:storage root.temp.item