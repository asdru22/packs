summon minecraft:husk ~ ~ ~ {IsBaby: 0b, Attributes: [{Base: 1000.0d, Name: "minecraft:generic.max_health"}, {Base: 0.23000000417232513d, Name: "minecraft:generic.movement_speed"}], PersistenceRequired: 1b, Tags: ["atr.affected","atr.setup"],  Health: 1000.0f, Rotation: [0.0f, 0.0f], HandItems: [{}, {}], ArmorDropChances: [-1000.0f, -1000.0f, -1000.0f, -1000.0f], CanBreakDoors: 0b, ArmorItems: [{}, {}, {}, {id:"minecraft:hay_block",Count:1b,tag:{atr:{xp:94,health:100,id:"dummy",damage:500}}}], CanPickUpLoot: 0b,DeathLootTable:""}
execute as @e[tag=atr.setup] run function atr:mob/setup