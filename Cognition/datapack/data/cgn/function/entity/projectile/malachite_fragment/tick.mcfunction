data modify storage cgn:temp root.malachite_fragment set from entity @s data.cgn
scoreboard players set $temp cgn.dummy 5
function cgn:entity/projectile/malachite_fragment/loop
particle dust{color:[0.000,0.722,0.024],scale:1} ~ ~ ~ 0 0 0 1 0 normal