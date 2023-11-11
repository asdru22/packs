execute unless data storage cgn:storage root.temp.item.tag.cgn.charge.charged run data modify storage cgn:storage root.temp.item.tag.display.Lore insert 0 value '""'

# val = 1 if gloomstone, remove 6 and store *-1 to get 5, val = 0 -> charge = 6
execute store result score #value cgn.dummy if data storage cgn:storage root.temp.item.tag.cgn{ebonite_upgradeable:1b}
execute store result storage cgn:storage root.temp.item.tag.cgn.charge.amount int -1 run scoreboard players remove #value cgn.dummy 6

data modify storage cgn:storage root.temp.item.tag.cgn.charge.charged set value 1b

function cgn:item/chargeable_armor/modify/lore with storage cgn:storage root.temp.item.tag.cgn.charge