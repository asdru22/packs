setblock ~ ~ ~ air
loot spawn ~ ~ ~ loot cgn:items/ebonite_upgrade_smithing_template
execute as @e[type=item,nbt={Age:0s}] run function cgn:postgen/as_ebonite_upgrade