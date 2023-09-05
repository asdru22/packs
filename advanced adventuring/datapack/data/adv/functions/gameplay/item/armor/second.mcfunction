## leafy armor
execute if predicate adv:item/set_bonus/leafy run function adv:gameplay/item/armor/leafy/apply
execute if entity @s[tag=adv.set_bonus.leafy,predicate=!adv:item/set_bonus/leafy] run function adv:gameplay/item/armor/leafy/remove
## shellmet
execute if entity @s[predicate=adv:item/wearing/shellmet] run function adv:gameplay/item/armor/shellmet/apply
execute if entity @s[tag=adv.armor.shellmet,predicate=!adv:item/wearing/shellmet] run function adv:gameplay/item/armor/shellmet/remove