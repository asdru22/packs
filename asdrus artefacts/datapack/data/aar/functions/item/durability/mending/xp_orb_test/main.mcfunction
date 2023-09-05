############################################################
# Detects XP orbs near you
############################################################

execute if entity @e[distance=..3,type=experience_orb,tag=!smithed.entity] run tag @s add aar.tag
execute if entity @s[tag=!aar.saw_xp_orb,tag=aar.tag] run function aar:item/durability/mending/xp_orb_test/set_tags
execute if entity @s[tag=aar.saw_xp_orb,tag=!aar.tag] run function aar:item/durability/mending/xp_change_detect
tag @s remove aar.tag