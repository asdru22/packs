## 3
# display data
data modify storage a:data root.display.icon set from storage a:data root.hit.icon
execute store result storage a:data root.display.damage_int int 0.1 run scoreboard players get $damage_recieved var
execute store result storage a:data root.display.damage_dec int 1 run scoreboard players operation $damage_recieved var %= 10 const
execute if data storage a:data root.hit.crit run data modify storage a:data root.display.crit_color set value "gold"
execute unless data storage a:data root.hit.crit run data modify storage a:data root.display.crit_color set value "white"

# no element
$execute if data storage a:data root.hit{elemental_damage:0} anchored eyes positioned ^ ^ ^ positioned ~$(x) ~ ~$(z) summon text_display run function a:combat/entity/hurt/display/no_element with storage a:data root.display
# has element
$execute unless data storage a:data root.hit{elemental_damage:0} anchored eyes positioned ^ ^ ^ positioned ~$(x) ~ ~$(z) run function a:combat/entity/hurt/apply_elemental_damage with storage a:data root.hit

function a:mob/display/update 