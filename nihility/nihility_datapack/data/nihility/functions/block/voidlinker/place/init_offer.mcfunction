tag @s add nihility.schedule_offer

execute if entity @s[predicate=nihility:entity/item/valid_offer,nbt=!{Item:{id:"minecraft:bundle"}}] run schedule function nihility:block/voidlinker/place/schedule_offer 1s
execute if entity @s[predicate=nihility:entity/item/valid_offer,nbt={Item:{id:"minecraft:bundle"}}] if data entity @s Item.tag.Items[] run schedule function nihility:block/voidlinker/place/schedule_offer 1s

playsound minecraft:entity.lightning_bolt.thunder block @a[distance=..10] ~ ~ ~ 2 1.67
particle end_rod ~ ~ ~ 0.2 0.2 0.2 0.02 10 normal 