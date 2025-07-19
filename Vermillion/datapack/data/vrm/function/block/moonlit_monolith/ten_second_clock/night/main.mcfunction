execute store result score #moon_phase vrm.dummy run time query day
scoreboard players operation #moon_phase vrm.dummy %= #8 vrm.dummy

# 0. Full moon (4/4)
# 1. Waning gibbous (3/4)
# 2. Last quarter (2/4)
# 3. Waning crescent (1/4)
# 4. New moon (0/4)
# 5. Waxing crescent (1/4) 
# 6. First quarter (2/4)
# 7. Waxing gibbous (3/4)

item modify entity @s contents {"function":"minecraft:set_custom_data","tag":"{vrm:{night:true}}"}
tag @s add vrm.moonlit_monolith.night
execute on passengers if entity @s[type=item_display] run function vrm:block/moonlit_monolith/ten_second_clock/night/moonstone
playsound vrm:block.moonlit_monolith.moonstone_emerging block @a[distance=..16]