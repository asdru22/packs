data modify storage cgn:storage root.temp.item set from entity @s SelectedItem
execute store result score $temp cgn.dummy run attribute @s block_interaction_range get 20
execute anchored eyes positioned ^ ^ ^ run function cgn:block/vanilla/flower_pot/cast
advancement revoke @s only cgn:technical/any_block_use/interact_with_flower_pot