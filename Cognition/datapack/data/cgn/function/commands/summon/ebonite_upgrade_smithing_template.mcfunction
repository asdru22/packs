setblock ~ ~ ~ air
loot spawn ~ ~ ~ loot cgn:items/ebonite_upgrade_smithing_template
execute as @n[type=item,nbt={Age:0s}] align xyz run tp @s ~.5 ~0.25 ~.5
execute as @n[type=item,nbt={Age:0s}] run data merge entity @s {Age:-32768s,NoGravity:1b,Motion:[0d,0d,0d]}