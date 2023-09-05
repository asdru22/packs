tag @s add asy.me
execute if predicate asy:item/flesh_whip/mainhand run function #smithed.item:durability/damage/mainhand
execute if predicate asy:item/flesh_whip/offhand run function #smithed.item:durability/damage/offhand
playsound asy:item.whip.use player @a[distance=..10] ~ ~ ~
scoreboard players set .dist asy.data 16
execute anchored eyes positioned ^ ^ ^ run function asy:item/flesh_whip/cast
tag @s remove asy.me
