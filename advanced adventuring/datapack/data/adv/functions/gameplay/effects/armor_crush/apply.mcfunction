execute if data entity @s HandItems[-1].tag.adve run function adv:gameplay/effects/armor_crush/copy_storage
execute unless data entity @s HandItems[-1].id run function adv:gameplay/effects/setup_offhand

data modify entity @s HandItems[-1].tag.adve set from storage adv:storage root.temp.effects