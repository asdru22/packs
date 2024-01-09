$damage @s $(amount) cbs:bypass_cooldown by $(by)

$execute store success score $temp cbs.dummy as $(by) run tag @s remove cbs.combo.blinding_light
execute if score $temp cbs.dummy matches 1 run function cbs:items/divine_orb/blinding_light/apply