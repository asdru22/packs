# Effects
execute if entity @s[tag=vrm.moonlit_monolith.balemoon] run function vrm:block/moonlit_monolith/ten_second_clock/day/reset_balemoon
playsound vrm:block.moonlit_monolith.moonstone_vanishing block @a[distance=..16] ~ ~ ~ 1 1.5
# Reset data

item modify entity @s contents {"function":"minecraft:set_custom_data","tag":"{vrm:{night:false}}"}
tag @s remove vrm.moonlit_monolith.night
tag @s remove vrm.moonlit_monolith.balemoon

execute on passengers if entity @s[type=item_display] run function vrm:block/moonlit_monolith/ten_second_clock/day/moonstone