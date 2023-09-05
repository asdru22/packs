scoreboard players remove d.0 asd.d 1
execute if block ~ ~ ~ barrel if data block ~ ~ ~ Lock run function asd:block/locked/found
execute if score d.0 asd.d matches 1 positioned ^ ^ ^.5 run function asd:block/locked/cast