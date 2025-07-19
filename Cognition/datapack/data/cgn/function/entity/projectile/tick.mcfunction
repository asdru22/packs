scoreboard players remove @s cgn.animation_timer 1
kill @s[tag=!cgn.projectile.no_timer,scores={cgn.animation_timer=..0},tag=cgn.projectile.setup] 

execute if entity @s[tag=cgn.pyroplastic_beam] run return run function cgn:entity/projectile/pyroplastic_beam/tick

execute if entity @s[type=#arrows] run return run function cgn:entity/projectile/arrow/tick
execute if entity @s[tag=cgn.thrown_potion,predicate=!cgn:entity_properties/has_vehicle] run return run function cgn:entity/projectile/thrown_potion

execute if entity @s[tag=cgn.malachite_knife] run return run function cgn:item/malachite_knife/tick

execute if entity @s[tag=cgn.double_edged_sword] run return run function cgn:item/double_edged_sword/tick

execute if entity @s[tag=cgn.malachite_fragment] run return run function cgn:entity/projectile/malachite_fragment/tick

execute if entity @s[tag=cgn.electroplasm_wave] run return run function cgn:entity/projectile/electroplasm_wave/tick

execute if entity @s[tag=cgn.gloomstone_beam] run return run function cgn:entity/projectile/gloomstone_beam/tick
execute if entity @s[tag=cgn.double_edged_sword.pulse] run return run function cgn:entity/projectile/double_edged_sword_pulse/tick

#

#
#
#execute if entity @s[tag=cgn.double_edged_sword_mace] run return run function cgn:item/ebonite_sword/#mace/tick
