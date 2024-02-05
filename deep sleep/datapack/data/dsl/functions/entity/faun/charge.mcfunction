tag @s add dsl.entity.attacking
scoreboard players set @s dsl.dummy2 11

attribute @s generic.attack_damage modifier add 2a5af7cb-5657-4c4a-b92f-59f68befb241 "charge_a" 5 add
attribute @s generic.movement_speed modifier add 289b28fc-b746-4115-8dcb-87c9aca68e48 "charge_m" 0.2 add
attribute @s generic.knockback_resistance modifier add 8e3a05e2-2392-4de6-8259-3c446e64f601 "charge_r" 100 add

data modify entity @s ArmorItems[3].tag.CustomModelData set value 882002

playsound dsl:entity.faun.attack hostile @a[distance=..16] ~ ~ ~ 2 1