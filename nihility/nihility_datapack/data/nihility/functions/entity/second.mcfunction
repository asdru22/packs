execute if entity @s[type=marker,tag=nihility.void_score_marker,tag=nihility.setup,scores={nihility.data=1..}] run function nihility:block/voidlinker/anim/second 
execute if entity @s[type=glow_item_frame,tag=nihility.crop,tag=!nihility.crop.grown] run function nihility:block/crops/second
execute if entity @s[type=armor_stand,tag=nihility.block.voidlinker] run data merge block ~ ~ ~ {Lock:"\\uf001nihility.voidlinker"}
execute if entity @s[type=armor_stand,tag=nihility.block.magnetic_forge] run function nihility:block/magnetic_forge/second
execute if entity @s[type=item,tag=nihility.item_offer,scores={nihility.data=1..}] run function nihility:block/magnetic_forge/burn/second
execute if entity @s[type=item,tag=nihility.item_augment,scores={nihility.data=1..}] run function nihility:block/awakening_table/awaken/second

execute if entity @s[tag=nihility.void_spawn] run function nihility:entity/void_spawn/second
execute if entity @s[type=armor_stand,tag=nihility.block.oblivion_well,scores={nihility.data=0..}] run function nihility:block/oblivion_well/animation/second

execute if entity @s[tag=nihility.entity.custom] run function nihility:entity/void_spawn/custom/second

execute if entity @s[tag=nihility.button] run data merge entity @s {Offers:{Recipes:[]},ActiveEffects:[{Id:14,Amplifier:5b,Duration:10000,ShowParticles:0b}]}