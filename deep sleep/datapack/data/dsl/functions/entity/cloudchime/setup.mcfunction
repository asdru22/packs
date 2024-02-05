## > function dsl:commands/summon/cloudchime

data merge entity @s {Tags:["dsl.cloudchime_base","dsl.has_riding_item_display"],Health:1000f,DeathLootTable:"",Attributes:[{Name:"generic.max_health",Base:1000},{Name:"generic.movement_speed",Base:0.3},{Name:"generic.attack_damage",Base:6}],Silent:1b,CanPickUpLoot:0b,ArmorItems:[{},{},{},{}],active_effects:[{id:"minecraft:invisibility",duration:-1,amplifier:0b,show_particles:false}],CustomName:'{"translate":"entity.dsl.cloudchime"}',ArmorDropChances:[-1000.0f,-1000.0f,-1000.0f,-1000.0f],HandItems:[{id:"minecraft:recovery_compass",Count:1b,tag:{CustomModelData:882000}},{}],HandDropChances:[-1000.0f,-1000.0f]}

execute summon item_display run function dsl:entity/cloudchime/item_display

#scoreboard players set @s dsl.dummy2 0
scoreboard players set @s dsl.dummy 300

execute store result entity @s BoundX int 1 run data get entity @s Pos[0]
execute store result entity @s BoundY int 1 run data get entity @s Pos[1]
execute store result entity @s BoundZ int 1 run data get entity @s Pos[2]