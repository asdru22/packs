execute unless block ~ ~ ~ furnace run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Marker:1b,Tags:["mach.tick","mach.second","mach.grinder","smithed.block"],ArmorItems:[{},{},{},{id:"minecraft:furnace",Count:1b,tag:{CustomModelData:880002}}]}
execute if block ~ ~ ~ furnace[facing=south] run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Marker:1b,Tags:["mach.tick","mach.second","mach.grinder","smithed.block"],ArmorItems:[{},{},{},{id:"minecraft:furnace",Count:1b,tag:{CustomModelData:880002}}]}
execute if block ~ ~ ~ furnace[facing=north] run summon armor_stand ~ ~ ~ {Rotation:[180f],Invisible:1b,Invulnerable:1b,Marker:1b,Tags:["mach.tick","mach.second","mach.grinder","smithed.block"],ArmorItems:[{},{},{},{id:"minecraft:furnace",Count:1b,tag:{CustomModelData:880002}}]}
execute if block ~ ~ ~ furnace[facing=west] run summon armor_stand ~ ~ ~ {Rotation:[90f],Invisible:1b,Invulnerable:1b,Marker:1b,Tags:["mach.tick","mach.second","mach.grinder","smithed.block"],ArmorItems:[{},{},{},{id:"minecraft:furnace",Count:1b,tag:{CustomModelData:880002}}]}
execute if block ~ ~ ~ furnace[facing=east] run summon armor_stand ~ ~ ~ {Rotation:[270f],Invisible:1b,Invulnerable:1b,Marker:1b,Tags:["mach.tick","mach.second","mach.grinder","smithed.block"],ArmorItems:[{},{},{},{id:"minecraft:furnace",Count:1b,tag:{CustomModelData:880002}}]}
setblock ~ ~ ~ barrel{CustomName:'{"translate":"block.mach.gui","font":"mach:gui","color":"white","with":[{"translate":"block.mach.grinder","color":"#3F3F3F","font":"minecraft:default"}]}'}