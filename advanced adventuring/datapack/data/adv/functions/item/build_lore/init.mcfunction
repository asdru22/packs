#data modify storage adv:storage root.temp.item set from entity @s SelectedItem

summon armor_stand ~ 0 ~ {Marker:1b,Invulnerable:1b,Invisible:1b,UUID:[I;-1386700423,-86032139,-1390062175,90063064]}
execute as ad58a179-fadf-40f5-ad25-55a1055e40d8 run function adv:item/build_lore/modify

item replace entity @s weapon.mainhand from entity ad58a179-fadf-40f5-ad25-55a1055e40d8 weapon.mainhand

kill ad58a179-fadf-40f5-ad25-55a1055e40d8