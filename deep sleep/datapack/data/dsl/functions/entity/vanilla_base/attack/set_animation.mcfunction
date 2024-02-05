data modify entity @s ArmorItems[3].tag.CustomModelData set from entity @s ArmorItems[3].tag.dsl.base_attack

tag @s add dsl.entity.base_attack
schedule function dsl:entity/vanilla_base/attack/schedule 10t append