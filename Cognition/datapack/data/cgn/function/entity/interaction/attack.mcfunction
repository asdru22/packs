# impl
data remove entity @s attack
# main
execute if entity @s[tag=cgn.midnight_rose] run return run function cgn:block/midnight_rose/attack
execute if entity @s[tag=cgn.wispthorn] run return run function cgn:block/wispthorn/attack
execute if entity @s[tag=cgn.double_edged_sword_interaction] on vehicle run function cgn:item/double_edged_sword/punch/main