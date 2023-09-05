data modify storage nihility:storage root.temp.data set from storage nihility:storage root.temp.data.tag.Items[0].tag.smithed
#tellraw @p {"nbt":"root.temp.data","storage": "nihility:storage"}
execute if data storage nihility:storage root.temp.data{id:"nihility:rescinded_sigil"} run function nihility:item/phoenix_envelope/items/rescinded_blade
