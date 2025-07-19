execute positioned ~ ~-1 ~ if block ~ ~ ~ dispenser[facing=up] run function cgn:item/vanilla/dispensable/axe_logic/insert
execute positioned ~ ~1 ~ if block ~ ~ ~ dispenser[facing=down] run function cgn:item/vanilla/dispensable/axe_logic/insert
execute positioned ~ ~ ~1 if block ~ ~ ~ dispenser[facing=north] run function cgn:item/vanilla/dispensable/axe_logic/insert
execute positioned ~ ~ ~-1 if block ~ ~ ~ dispenser[facing=south] run function cgn:item/vanilla/dispensable/axe_logic/insert
execute positioned ~1 ~ ~ if block ~ ~ ~ dispenser[facing=west] run function cgn:item/vanilla/dispensable/axe_logic/insert
execute positioned ~-1 ~ ~ if block ~ ~ ~ dispenser[facing=east] run function cgn:item/vanilla/dispensable/axe_logic/insert