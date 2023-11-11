# init
data modify storage adr:storage root.temp.item set from entity @s SelectedItem
data remove storage adr:storage root.temp.item.Count
scoreboard players set @s adr.dummy 1

execute anchored eyes positioned ^ ^ ^ run function adr:block/decorated_pot/find/init
# end
scoreboard players reset @s adr.dummy
advancement revoke @s only adr:technical/used_item_on_block/firework_on_decorated_pot