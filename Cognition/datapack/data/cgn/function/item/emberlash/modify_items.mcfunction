execute if items entity @s weapon.mainhand *[item_name='{"translate": "item.cgn.emberlash"}',custom_data~{cgn:{charged:true}}] run return run function cgn:item/emberlash/charge {slot:"mainhand",slot_raw:"SelectedItem"}
execute if items entity @s weapon.offhand *[item_name='{"translate": "item.cgn.emberlash"}',custom_data~{cgn:{charged:true}}] run return run function cgn:item/emberlash/charge {slot:"offhand",slot_raw:"Inventory[{Slot:-106b}]"}

scoreboard players remove @s[gamemode=!creative] cgn.electroplasm.current 10
