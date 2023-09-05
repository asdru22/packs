############################################################
# Commands to run if the item breaks
############################################################
# replace soon with macros
playsound minecraft:entity.item.break player @a[distance=..16]
execute if data storage aar:storage root.temp.item.tag.aar{id:"amethyst_resonance_shield"} run particle item minecraft:shield{CustomModelData:881000} ~ ~1 ~ 0.2 0.2 0.2 0.1 10 normal
execute if data storage aar:storage root.temp.item.tag.aar{id:"windup_crossbow"} run particle item minecraft:shield{CustomModelData:881000} ~ ~1 ~ 0.2 0.2 0.2 0.1 10 normal
execute if data storage aar:storage root.temp.item.tag.aar{id:"sculked_bone_mask"} run particle item minecraft:iron_helmet{CustomModelData:881004} ~ ~1 ~ 0.2 0.2 0.2 0.1 10 normal
execute if data storage aar:storage root.temp.item.tag.aar{id:"treasure_glove"} run particle item minecraft:warped_fungus_on_a_stick{CustomModelData:881002} ~ ~1 ~ 0.2 0.2 0.2 0.1 10 normal
data remove storage aar:storage root.temp.item
