# Spawns the brewing stand marker

execute align xyz unless entity @e[dx=0,type=minecraft:marker,tag=cgn.block.brewing_stand] run summon minecraft:marker ~0.5 ~0.5 ~0.5 {Tags:["cgn.brewing_stand","cgn.tick","cgn.second","cgn.block","smithed.entity","smithed.strict"]}