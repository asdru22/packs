execute if entity @s[tag=gh.visfix] store result entity @s Air short 1 run time query gametime
execute if entity @s[type=armor_stand,tag=gh.hook] run function gh:item/grappling_hook/as_armor_stand/tick
execute if entity @s[tag=gh.hook] as @a[distance=..2,tag=gh.land] run function gh:item/grappling_hook/as_armor_stand/end