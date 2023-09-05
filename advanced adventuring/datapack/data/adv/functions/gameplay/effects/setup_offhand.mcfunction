item replace entity @s weapon.offhand with recovery_compass{CustomModelData:6530000}
data modify entity @s HandDropChances[-1] set value -1000.0f
data modify storage adv:storage root.temp.effects set value []
data modify storage adv:storage root.temp.effects insert -1 from storage adv:storage root.temp.apply_effect 