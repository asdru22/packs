scoreboard players add @s cbs.combo.charge 1
execute if score @s cbs.combo.charge matches ..3 run function cbs:display/effects/charge/reset

execute if score @s cbs.combo.charge matches 1 run function cbs:display/effects/charge/apply {color:"gray",level:1,duration:30}
execute if score @s cbs.combo.charge matches 2 run function cbs:display/effects/charge/apply {color:"gold",level:2,duration:30}
execute if score @s cbs.combo.charge matches 3 run function cbs:display/effects/charge/apply {color:"yellow",level:3,duration:30}

execute if score @s cbs.combo.charge matches 4.. run function cbs:items/thundering_staff/charge/full
