playsound asy:entity.symbiote.throw hostile @a[distance=..10] ~ ~ ~
scoreboard players reset @s asy.data

execute if entity @s[predicate=!asy:player/on_fire,nbt=!{SelectedItem:{tag:{smithed:{id:"asy:containment_vial"}}}}] run function asy:entity/player/symbiote_leech/throw
execute if entity @s[predicate=asy:player/on_fire,nbt=!{SelectedItem:{tag:{smithed:{id:"asy:containment_vial"}}}}] run loot give @s loot asy:item/iron_rich_blood
execute if entity @s[predicate=!asy:player/on_fire,nbt={SelectedItem:{tag:{smithed:{id:"asy:containment_vial"}}}}] run function asy:item/containment_vial/fill/_main
scoreboard players remove @s asy.symbiote 1
execute if score @s asy.symbiote < @s asy.max_symbiote run tag @s remove asy.symbiote.ignore 

data remove storage asy:storage root.temp.item
execute if score @s asy.symbiote matches 0 run function asy:entity/player/symbiote_leech/no_symbiote
execute if score @s asy.symbiote matches 1.. run function asy:entity/player/symbiote_leech/has_helmet

execute if entity @s[scores={asy.symbiote=0}] run function asy:entity/player/symbiote_leech/reset