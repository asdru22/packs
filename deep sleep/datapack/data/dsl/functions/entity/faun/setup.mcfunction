## > function dsl:commands/summon/faun

data merge entity @s {Tags:["dsl.entity","dsl.tick","dsl.second","dsl.faun","smithed.entity"],Health:1000f,DeathLootTable:"dsl:entities/faun",Attributes:[{Name:"generic.max_health",Base:1000},{Name:"generic.movement_speed",Base:0.3},{Name:"generic.attack_damage",Base:2}],Silent:1b,CanPickUpLoot:0b,ArmorItems:[{},{},{},{id:"minecraft:leather_horse_armor",Count:1b,tag:{display:{color:0},CustomModelData:882000,dsl:{id:"faun",idle:882000,walking:882001,attacking:882002,base_attack:882003}}}],active_effects:[{id:"minecraft:invisibility",duration:-1,amplifier:0b,show_particles:false}],CustomName:'{"translate":"entity.dsl.faun"}',ArmorDropChances:[-1000.0f,-1000.0f,-1000.0f,-1000.0f],HandItems:[{id:"minecraft:recovery_compass",Count:1b,tag:{CustomModelData:882000}},{}],HandDropChances:[-1000.0f,-1000.0f]}

scoreboard players set @s dsl.dummy2 7
scoreboard players set @s dsl.dummy 400