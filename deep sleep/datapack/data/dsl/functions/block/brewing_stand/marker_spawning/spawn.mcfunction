############################################################
# Spawns the brewing stand marker
############################################################

execute align xyz unless entity @e[dx=0,type=marker,tag=dsl.brewing_stand] run summon marker ~0.5 ~0.5 ~0.5 {Tags:["dsl.brewing_stand","dsl.tick","dsl.second","dsl.block","smithed.strict"]}
