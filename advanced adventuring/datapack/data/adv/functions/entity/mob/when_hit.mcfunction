# player abilities
execute if data storage adv:storage root.temp.attack{type:"melee"} run function adv:entity/mob/on_hit/melee_attacks
##
execute if entity @s[type=#adv:custom_entity_base,tag=adv.entity.custom,nbt={HurtTime:10s}] if data entity @s HandItems[-1].tag.advm.Armor run function adv:entity/mob/custom/when_hit