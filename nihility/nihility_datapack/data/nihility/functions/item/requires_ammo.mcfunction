function nihility:item/wand_dmg
## Glimmering Stick
execute if data storage nihility:storage root.temp.item.tag.smithed{id:"nihility:glimmering_stick"} if predicate nihility:item/magic_weapon_conditions/glimmering_stick anchored eyes positioned ^ ^ ^ run function nihility:item/glimmering_stick/init

## Crystal Weaver
execute if data storage nihility:storage root.temp.item.tag.smithed{id:"nihility:crystal_weaver"} if predicate nihility:item/magic_weapon_conditions/crystal_weaver rotated ~ 0 run function nihility:item/crystal_weaver/main
## Slime Slinger Staff
execute if data storage nihility:storage root.temp.item.tag.smithed{id:"nihility:slime_slinger_staff"} if predicate nihility:item/magic_weapon_conditions/slime_slinger_staff anchored eyes positioned ^ ^ ^ run function nihility:item/slime_slinger_staff/main