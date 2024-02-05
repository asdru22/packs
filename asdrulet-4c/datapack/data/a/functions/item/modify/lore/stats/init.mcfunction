

data modify storage a:data root.temp.lore.categories set value {active:false,passive:false,other:false}

$execute unless data storage a:data root.item.tag.a.stats{damage:false} unless data storage a:data root.item.tag.a.elemental_damage run function a:item/modify/lore/stats/add {amount:$(damage),stat:"damage",color:"#ff0000",category:"active"}

$execute unless data storage a:data root.item.tag.a.stats{damage:false} if data storage a:data root.item.tag.a.elemental_damage run function a:item/modify/lore/stats/elemental_damage {amount:$(damage),element:"$(element)",element_color:"$(element_color)",elemental_damage:$(elemental_damage)}

$execute unless data storage a:data root.item.tag.a.stats{crit_chance:false} run function a:item/modify/lore/stats/add {amount:$(crit_chance),stat:"crit_chance",color:"#ff0000",category:"active"}

$execute unless data storage a:data root.item.tag.a.stats{crit_damage:false} run function a:item/modify/lore/stats/add {amount:$(crit_damage),stat:"crit_damage",color:"#ff0000",category:"active"}

$execute unless data storage a:data root.item.tag.a.stats{attack_speed:false} run function a:item/modify/lore/stats/add {amount:$(attack_speed),stat:"attack_speed",color:"#ff0000",category:"active"}

$execute unless data storage a:data root.item.tag.a.stats{reach:false} run function a:item/modify/lore/stats/add {amount:$(reach),stat:"reach",color:"#ff0000",category:"active"}

$execute unless data storage a:data root.item.tag.a.stats{projectile_speed:false} run function a:item/modify/lore/stats/add {amount:$(projectile_speed),stat:"projectile_speed",color:"#ff0000",category:"active"}

$execute unless data storage a:data root.item.tag.a.stats{cast_cooldown:false} run function a:item/modify/lore/stats/cast_cooldown {amount:$(cast_cooldown)}

##
$execute unless data storage a:data root.item.tag.a.stats{max_health:false} run function a:item/modify/lore/stats/add {amount:$(max_health),stat:"max_health",color:"#00ff00",category:"passive"}

$execute unless data storage a:data root.item.tag.a.stats{defense:false} unless data storage a:data root.item.tag.a.elemental_defense run function a:item/modify/lore/stats/add {amount:$(defense),stat:"defense",color:"#00ff00",category:"passive"}

$execute unless data storage a:data root.item.tag.a.stats{defense:false} if data storage a:data root.item.tag.a.elemental_defense run function a:item/modify/lore/stats/elemental_defense {amount:$(defense),element:"$(element)",element_color:"$(element_color)",elemental_defense:$(elemental_defense)}

$execute unless data storage a:data root.item.tag.a.stats{movement_speed:false} run function a:item/modify/lore/stats/add {amount:$(movement_speed),stat:"movement_speed",color:"#00ff00",category:"passive"}

$execute unless data storage a:data root.item.tag.a.stats{knockback_resistance:false} run function a:item/modify/lore/stats/add {amount:$(knockback_resistance),stat:"knockback_resistance",color:"#00ff00",category:"passive"}

$execute unless data storage a:data root.item.tag.a.stats{luck:false} run function a:item/modify/lore/stats/add {amount:$(luck),stat:"luck",color:"#00ff00",category:"passive"}

$execute unless data storage a:data root.item.tag.a.stats{stamina_regeneration:false} run function a:item/modify/lore/stats/add {amount:$(stamina_regeneration),stat:"stamina_regeneration",color:"#00ff00",category:"passive"}

##
$execute unless data storage a:data root.item.tag.a.stats{stamina_used:false} run function a:item/modify/lore/stats/add {amount:$(stamina_used),stat:"stamina_used",color:"#ffff00",category:"other"}