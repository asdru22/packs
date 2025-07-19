execute if entity @s[tag=!cgn.stygian_totem_schedule] unless block ~ ~ ~ dropper run return run function cgn:block/stygian_totem/destroy
execute if entity @s[tag=cgn.stygian_totem_schedule] unless block ~ ~ ~ furnace run return run function cgn:block/stygian_totem/destroy

execute if entity @s[tag=!cgn.stygian_totem.active] if block ~ ~ ~ dropper[triggered=true] run function cgn:block/stygian_totem/activate

execute if entity @s[tag=cgn.stygian_totem.active] if block ~ ~ ~ dropper[triggered=false] run function cgn:block/stygian_totem/deactivate