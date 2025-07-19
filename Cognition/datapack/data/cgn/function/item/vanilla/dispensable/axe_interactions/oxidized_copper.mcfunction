particle minecraft:scrape ~ ~ ~ 0.5 0.5 0.5 0 5
playsound minecraft:item.axe.scrape block @a[distance=..16]
function cgn:item/vanilla/dispensable/axe_logic/drop_malachite
execute if block ~ ~ ~ oxidized_chiseled_copper run return run setblock ~ ~ ~ weathered_chiseled_copper
execute if block ~ ~ ~ oxidized_copper run return run setblock ~ ~ ~ weathered_copper
execute if block ~ ~ ~ oxidized_copper_bulb run return run function cgn:item/vanilla/dispensable/axe_interactions/oxidized_copper_bulb_states
execute if block ~ ~ ~ oxidized_copper_door run return run function cgn:item/vanilla/dispensable/axe_interactions/oxidized_copper_door_states
execute if block ~ ~ ~ oxidized_copper_grate run return run setblock ~ ~ ~ weathered_copper_grate
execute if block ~ ~ ~ oxidized_copper_trapdoor run return run function cgn:item/vanilla/dispensable/axe_interactions/oxidized_copper_trapdoor_states
execute if block ~ ~ ~ oxidized_cut_copper run return run setblock ~ ~ ~ weathered_cut_copper
execute if block ~ ~ ~ oxidized_cut_copper_slab run return run function cgn:item/vanilla/dispensable/axe_interactions/oxidized_cut_copper_slab_states
execute if block ~ ~ ~ oxidized_cut_copper_stairs run return run function cgn:item/vanilla/dispensable/axe_interactions/oxidized_cut_copper_stairs_states
