# impl
data remove entity @s interaction
# attack
execute if entity @s[tag=cgn.midnight_rose] run return run function cgn:block/midnight_rose/interact/main
execute if entity @s[tag=cgn.wispthorn] run return run function cgn:block/wispthorn/interact
execute if entity @s[tag=cgn.double_edged_sword.pulse_interaction] run function cgn:entity/projectile/double_edged_sword_pulse/interact