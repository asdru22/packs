data remove storage dsl:storage root.temp.item.tag.display.Lore

execute if data storage dsl:storage root.temp.item.tag.Items[0].tag.dsl{id:"bowl_of_foob"} run advancement grant @s only dsl:dsl/foobception

function dsl:item/bowl_of_foob/add_lore with storage dsl:storage root.temp.item.tag.Items[0].tag.dsl

function dsl:item/bowl_of_foob/modify_name with storage dsl:storage root.temp.item.tag.Items[0].tag.display

$loot replace entity @s container.$(slot) loot dsl:technical/copy_nbt/bowl_of_foob
$summon item ~ ~ ~ {PickupDelay:0s,Item:{id:"$(id)",Count:$(Count),tag:$(tag)}}