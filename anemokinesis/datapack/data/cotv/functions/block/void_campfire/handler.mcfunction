#execute if block ~ ~ ~ furnace[facing=north] run setblock ~ ~ ~ campfire[facing=north]
#execute if block ~ ~ ~ furnace[facing=east] run setblock ~ ~ ~ campfire[facing=east]
#execute if block ~ ~ ~ furnace[facing=west] run setblock ~ ~ ~ campfire[facing=west]
#execute if block ~ ~ ~ furnace[facing=south] run setblock ~ ~ ~ campfire[facing=south]
setblock ~ ~ ~ campfire[facing=south]
execute align xyz run summon armor_stand ~.5 ~ ~.5 {Tags:["cotv.block.void_campfire","cotv.entity","smithed.block","smithed.entity","smithed.block","smithed.armor_stand"],Invisible:1b,Invulnerable:1b,Marker:1b,ArmorItems:[{},{},{},{Count:1b,id:"minecraft:chain_command_block",tag:{CustomModelData:6901001}}]}