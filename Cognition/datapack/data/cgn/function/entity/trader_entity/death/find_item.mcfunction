# Where were you when trader entity was kil?

execute as @e[type=minecraft:item,tag=!smithed.entity,nbt={Item:{components:{"minecraft:custom_data":{cgn:{death_item:true}}}}}] at @s run function cgn:entity/trader_entity/death/effects