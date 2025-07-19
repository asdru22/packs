# actionbar
execute if entity @s[predicate=cgn:entity_properties/display_electroplasm] unless score @s smithed.actionbar.freeze matches -2147483648..2147483647 run function cgn:entity/player/electroplasm/display/main

# usable item
execute if entity @s[scores={cgn.using_item=1..}] run function cgn:item/vanilla/usable/tick

# shoot ranged weapon
execute if entity @s[predicate=cgn:entity_properties/used_ranged_weapon] run function cgn:entity/player/scores/use_ranged_weapon

# click wofas
execute if entity @s[scores={cgn.used_warped_fungus_on_a_stick=1..}] run function cgn:item/vanilla/warped_fungus_on_a_stick/use

# chargeable armor
execute if entity @s[scores={cgn.air_time=1..}] run function cgn:item/chargeable_armor/in_air/tick
execute if entity @s[tag=cgn.chargeable_armor.charged,predicate=cgn:entity_properties/player_input/jump_button] run function cgn:item/chargeable_armor/charged_jump

# malachite drop
execute if entity @s[advancements={cgn:technical/item_used_on_block/scrape_oxidation=true}] run function cgn:item/malachite/advancement

# electroplasm carver
execute if entity @s[predicate=cgn:entity_properties/electroplasm_carver/main] run function cgn:item/electroplasm_carver/tick
execute if entity @s[tag=cgn.electroplasm_carver,predicate=!cgn:entity_properties/electroplasm_carver/main] run function cgn:item/electroplasm_carver/full_reset
execute if entity @s[predicate=cgn:entity_properties/electroplasm_carver/fix] run function cgn:item/electroplasm_carver/fix/main
execute if score @s cgn.used_fishing_rod matches 1.. run function cgn:entity/player/scores/used_fishing_rod

# recoil shield
scoreboard players remove @s[scores={cgn.recoil_shield=1..}] cgn.recoil_shield 1