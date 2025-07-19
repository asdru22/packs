particle minecraft:wax_off ~ ~ ~ 0.5 0.5 0.5 0 5
playsound minecraft:item.axe.scrape block @a[distance=..16]
execute if block ~ ~ ~ waxed_exposed_chiseled_copper run return run setblock ~ ~ ~ exposed_chiseled_copper
execute if block ~ ~ ~ waxed_exposed_copper run return run setblock ~ ~ ~ exposed_copper
execute if block ~ ~ ~ waxed_exposed_copper_bulb run return run function cgn:item/vanilla/dispensable/axe_interactions/waxed_exposed_copper_bulb_states
execute if block ~ ~ ~ waxed_exposed_copper_door run return run function cgn:item/vanilla/dispensable/axe_interactions/waxed_exposed_copper_door_states
execute if block ~ ~ ~ waxed_exposed_copper_grate run return run setblock ~ ~ ~ exposed_copper_grate
execute if block ~ ~ ~ waxed_exposed_copper_trapdoor run return run function cgn:item/vanilla/dispensable/axe_interactions/waxed_exposed_copper_trapdoor_states
execute if block ~ ~ ~ waxed_exposed_cut_copper run return run setblock ~ ~ ~ exposed_cut_copper
execute if block ~ ~ ~ waxed_exposed_cut_copper_slab run return run function cgn:item/vanilla/dispensable/axe_interactions/waxed_exposed_cut_copper_slab_states
execute if block ~ ~ ~ waxed_exposed_cut_copper_stairs run return run function cgn:item/vanilla/dispensable/axe_interactions/waxed_exposed_cut_copper_stairs_states
