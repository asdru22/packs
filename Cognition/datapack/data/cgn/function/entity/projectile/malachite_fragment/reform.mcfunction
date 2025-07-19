scoreboard players reset @s cgn.malachite_fragments_collected

execute if items entity @s weapon.mainhand diamond_sword[custom_data~{cgn:{no_blades:true}}] run return run function cgn:item/double_edged_sword/malachite/reform/sword_mainhand
execute if items entity @s weapon.offhand diamond_sword[custom_data~{cgn:{no_blades:true}}] run return run function cgn:item/double_edged_sword/malachite/reform/sword_offhand