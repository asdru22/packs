scoreboard players remove .dist asd.d 1
execute if block ~ ~ ~ #asd:drillable align xyz run function asd:item/drill/found
execute if score .dist asd.d matches 1.. if block ~ ~ ~ #asd:passable positioned ^ ^ ^0.33 run function asd:item/drill/cast