tag @s remove asy.setup
execute store result score .symbiote asy.data run data get entity @s ArmorItems[3].tag.CustomModelData
scoreboard players remove .symbiote asy.data 6901000

execute if score .symbiote asy.data matches 0 if predicate asy:entity/convert_to_drippler run data merge entity @s {DeathLootTable:"asy:entity/drippler",CustomName:'{"translate":"entity.asy.drippler","italic":false}',ArmorItems:[{},{},{},{id:"minecraft:potion",Count:1b,tag:{CustomPotionColor:16777215,CustomModelData:6901001}}],Health:25f,ActiveEffects:[{Id:14,Amplifier:1b,Duration:200000,ShowParticles:0b}],ArmorDropChances:[-1000.00f,-1000.00f,-1000.00f,-1000.00f],Attributes:[{Name:"minecraft:generic.knockback_resistance",Base:0},{Name:"minecraft:generic.max_health",Base:25}]}
execute if score .symbiote asy.data matches 0 run scoreboard players add .symbiote asy.data 1
execute if score .symbiote asy.data matches 5 run function asy:entity/envoyant/trades


#####
scoreboard players operation @s asy.symbiote_id = .symbiote asy.data