data modify storage cbs:storage root.temp.uuid set from entity @s UUID
execute positioned 0.0 0 0.0 positioned ^ ^ ^1.5 summon marker run function cbs:technical/math/resolve_vector 
execute anchored eyes positioned ^ ^ ^0.5 summon arrow run function cbs:items/bow/shoot/arrow with storage cbs:storage root.temp