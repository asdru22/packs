execute align xyz run summon wandering_trader ~.5 ~ ~.5 {Team:"smithed.prevent_aggression",DeathLootTable:"nihility:entity/sculker",NoAI:1b,HandDropChances:[-1000.000F,-1000.000F],ArmorItems:[{},{},{},{id:"minecraft:structure_block",Count:1b,tag:{CustomModelData:6906000,nihility:{mob_data:{anim:9,idle_model:6901002}}}}],ArmorDropChances:[0.085F,0.085F,0.085F,-1000.000F],Tags:["nihility.mob.static","nihility.entity","smithed.entity","nihility.void_spawn","nihility.entity.sculker","nihility.entity.sculker.close","nihility.entity.trader_ignore","nihility.entity.custom","nihility.setup"],Silent:1b,Invulnerable:1b,CanPickUpLoot:0b,Health:1000f,HandItems:[{id:"minecraft:leather_horse_armor",Count:1b,tag:{nihility:{health:{max:100,val:100}},CustomModelData:6901002,display:{color:16777215}}},{}],ActiveEffects:[{Id:2,Amplifier:200,Duration:21401142,ShowParticles:0b},{Id:14,Amplifier:200,Duration:21401142,ShowParticles:0b},{Id:11,Amplifier:200,Duration:1999999,ShowParticles:0b}],Attributes:[{Name:"generic.max_health",Base:40},{Name:"generic.knockback_resistance",Base:12},{Name:"generic.movement_speed",Base:0}],Offers:{}}
execute as @e[type=wandering_trader,tag=nihility.setup] run function nihility:entity/void_spawn/setup