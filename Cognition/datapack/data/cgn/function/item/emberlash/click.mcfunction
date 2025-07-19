execute if entity @s[gamemode=creative] run return run function cgn:item/emberlash/modify_items

execute if entity @s[scores={cgn.electroplasm.current=10..},gamemode=!creative] run function cgn:item/emberlash/modify_items