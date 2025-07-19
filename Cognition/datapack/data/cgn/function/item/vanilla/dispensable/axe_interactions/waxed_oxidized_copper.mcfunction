particle minecraft:wax_off ~ ~ ~ 0.5 0.5 0.5 0 5
playsound minecraft:item.axe.scrape block @a[distance=..16]
execute if block ~ ~ ~ waxed_oxidized_chiseled_copper run return run setblock ~ ~ ~ oxidized_chiseled_copper
execute if block ~ ~ ~ waxed_oxidized_copper run return run setblock ~ ~ ~ oxidized_copper
execute if block ~ ~ ~ waxed_oxidized_copper_bulb run return run function cgn:item/vanilla/dispensable/axe_interactions/waxed_oxidized_copper_bulb_states
execute if block ~ ~ ~ waxed_oxidized_copper_door run return run function cgn:item/vanilla/dispensable/axe_interactions/waxed_oxidized_copper_door_states
execute if block ~ ~ ~ waxed_oxidized_copper_grate run return run setblock ~ ~ ~ oxidized_copper_grate
execute if block ~ ~ ~ waxed_oxidized_copper_trapdoor run return run function cgn:item/vanilla/dispensable/axe_interactions/waxed_oxidized_copper_trapdoor_states
execute if block ~ ~ ~ waxed_oxidized_cut_copper run return run setblock ~ ~ ~ oxidized_cut_copper
execute if block ~ ~ ~ waxed_oxidized_cut_copper_slab run return run function cgn:item/vanilla/dispensable/axe_interactions/waxed_oxidized_cut_copper_slab_states
execute if block ~ ~ ~ waxed_oxidized_cut_copper_stairs run return run function cgn:item/vanilla/dispensable/axe_interactions/waxed_oxidized_cut_copper_stairs_states
