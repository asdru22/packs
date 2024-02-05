data modify storage a:data root.display.element set from storage a:data root.hit.element

execute store result storage a:data root.display.e_damage_int int 0.1 run scoreboard players get $e_damage_recieved var
execute store result storage a:data root.display.e_damage_dec int 1 run scoreboard players operation $e_damage_recieved var %= 10 const

$data modify storage a:data root.display.color set from storage a:data root.element[{element:"$(element)"}].color

execute summon text_display run function a:combat/entity/hurt/display/element with storage a:data root.display