scoreboard players reset @s cgn.using_item
execute if items entity @s weapon.mainhand minecraft:poisonous_potato[minecraft:item_name='{"translate":"item.cgn.storm_capacitor"}'] run return run function cgn:item/storm_capacitor/use {slot:"weapon.mainhand",source:"SelectedItem"}
function cgn:item/storm_capacitor/use {slot:"weapon.offhand",source:"Inventory[{Slot:-106b}]"}