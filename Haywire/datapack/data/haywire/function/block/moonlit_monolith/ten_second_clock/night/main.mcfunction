execute store result score #moon_phase haywire.dummy run time query day
scoreboard players operation #moon_phase haywire.dummy %= #8 haywire.dummy

# 0. Full moon (4/4)
# 1. Waning gibbous (3/4)
# 2. Last quarter (2/4)
# 3. Waning crescent (1/4)
# 4. New moon (0/4)
# 5. Waxing crescent (1/4) 
# 6. First quarter (2/4)
# 7. Waxing gibbous (3/4)

item modify entity @s contents {"function":"minecraft:set_custom_data","tag":"{haywire:{night:true}}"}
tag @s add haywire.moonlit_monolith.night
execute on passengers if entity @s[type=item_display] run function haywire:block/moonlit_monolith/ten_second_clock/night/moonstone
playsound haywire:block.moonlit_monolith.moonstone_emerging block @a[distance=..16]