scoreboard players remove $temp cgn.dummy 1
execute positioned ^ ^ ^0.05 if block ~ ~ ~ farmland if block ~ ~1 ~ #air align xyz positioned ~.5 ~ ~.5 run return run function cgn:block/midnight_rose/plant/place_crop
execute if score $temp cgn.dummy matches 1.. positioned ^ ^ ^0.05 if block ~ ~ ~ #air run function cgn:block/midnight_rose/plant/raycast