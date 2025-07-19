execute if entity @s[tag=cgn.double_edged_sword.pulse] run return fail
execute if data storage cgn:storage root.temp.item.components."minecraft:enchantments".levels."cgn:pulse" run return run function cgn:item/double_edged_sword/pulse_enchantment/init
execute if entity @s[tag=!cgn.double_edged_sword.punched] run function cgn:item/double_edged_sword/punch/init
