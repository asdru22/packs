############################################################
# Spawns the brewing stand marker
############################################################

execute align xyz unless entity @e[dx=0,type=marker,tag=srn.brewing_stand] run summon marker ~0.5 ~0.5 ~0.5 {Tags:["srn.brewing_stand","srn.tick","srn.second","srn.block","smithed.strict"]}
