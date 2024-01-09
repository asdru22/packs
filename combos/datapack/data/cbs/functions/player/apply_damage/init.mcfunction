data remove storage cbs:storage root.temp.damage

$scoreboard players set $damage cbs.dummy $(amount)
$data modify storage cbs:storage root.temp.damage.by set value "$(by)"
# damage modifiers (except defense)

#
execute store result storage cbs:storage root.temp.damage.amount double 0.1 run scoreboard players get $damage cbs.dummy
function cbs:player/apply_damage/apply with storage cbs:storage root.temp.damage