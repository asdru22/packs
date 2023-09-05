data modify storage adv:storage root.temp.effects set from entity @s HandItems[-1].tag.adve
execute if data storage adv:storage root.temp.effects[{id:"armor_crush"}] run function adv:gameplay/effects/armor_crush/main

data modify entity @s HandItems[-1].tag.adve set from storage adv:storage root.temp.effects