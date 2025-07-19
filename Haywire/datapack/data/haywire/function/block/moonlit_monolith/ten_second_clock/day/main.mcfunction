# Effects
execute if entity @s[tag=haywire.moonlit_monolith.balemoon] run function haywire:block/moonlit_monolith/ten_second_clock/day/reset_balemoon
playsound haywire:block.moonlit_monolith.moonstone_vanishing block @a[distance=..16] ~ ~ ~ 1 1.5
# Reset data

item modify entity @s contents {"function":"minecraft:set_custom_data","tag":"{haywire:{night:false}}"}
tag @s remove haywire.moonlit_monolith.night
tag @s remove haywire.moonlit_monolith.balemoon

execute on passengers if entity @s[type=item_display] run function haywire:block/moonlit_monolith/ten_second_clock/day/moonstone