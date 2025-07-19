scoreboard players set $temp cgn.dummy 0
execute unless data storage cgn:temp root.double_edged_sword{Slot:-106b} run function cgn:item/double_edged_sword/drop/mainhand with storage cgn:macro root.item
execute if score $temp cgn.dummy matches 0 run function cgn:item/double_edged_sword/drop/offhand with storage cgn:macro root.item