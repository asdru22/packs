execute unless block ~ ~ ~ dropper run function cgn:block/smoldering_vortex/break

execute if entity @s[tag=!cgn.smoldering_vortex.triggered] if block ~ ~ ~ dropper[triggered=true] run function cgn:block/smoldering_vortex/trigger/main
execute if entity @s[tag=cgn.smoldering_vortex.triggered] if block ~ ~ ~ dropper[triggered=false] run function cgn:block/smoldering_vortex/trigger/deactivate