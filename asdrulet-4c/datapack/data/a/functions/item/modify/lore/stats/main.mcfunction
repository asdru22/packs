data modify storage a:data root.item.tag.a.stats.element_color set from storage a:data root.item.tag.a.element_color
data modify storage a:data root.item.tag.a.stats.element set from storage a:data root.item.tag.a.element

data modify storage a:data root.item.tag.a.stats.elemental_damage set from storage a:data root.item.tag.a.elemental_damage
execute unless data storage a:data root.item.tag.a.stats.elemental_damage run data modify storage a:data root.item.tag.a.stats.elemental_damage set value false
data modify storage a:data root.item.tag.a.stats.elemental_defense set from storage a:data root.item.tag.a.elemental_defense
execute unless data storage a:data root.item.tag.a.stats.elemental_defense run data modify storage a:data root.item.tag.a.stats.elemental_defense set value false

execute unless data storage a:data root.item.tag.a.stats.damage run data modify storage a:data root.item.tag.a.stats.damage set value false
execute unless data storage a:data root.item.tag.a.stats.attack_speed run data modify storage a:data root.item.tag.a.stats.attack_speed set value false
execute unless data storage a:data root.item.tag.a.stats.reach run data modify storage a:data root.item.tag.a.stats.reach set value false
execute unless data storage a:data root.item.tag.a.stats.crit_chance run data modify storage a:data root.item.tag.a.stats.crit_chance set value false
execute unless data storage a:data root.item.tag.a.stats.crit_damage run data modify storage a:data root.item.tag.a.stats.crit_damage set value false
execute unless data storage a:data root.item.tag.a.stats.projectile_speed run data modify storage a:data root.item.tag.a.stats.projectile_speed set value false
execute unless data storage a:data root.item.tag.a.stats.cast_cooldown run data modify storage a:data root.item.tag.a.stats.cast_cooldown set value false
execute unless data storage a:data root.item.tag.a.stats.knockback run data modify storage a:data root.item.tag.a.stats.knockback set value false

execute unless data storage a:data root.item.tag.a.stats.max_health run data modify storage a:data root.item.tag.a.stats.max_health set value false
execute unless data storage a:data root.item.tag.a.stats.defense run data modify storage a:data root.item.tag.a.stats.defense set value false
execute unless data storage a:data root.item.tag.a.stats.max_stamina run data modify storage a:data root.item.tag.a.stats.max_stamina set value false
execute unless data storage a:data root.item.tag.a.stats.movement_speed run data modify storage a:data root.item.tag.a.stats.movement_speed set value false
execute unless data storage a:data root.item.tag.a.stats.knockback_resistance run data modify storage a:data root.item.tag.a.stats.knockback_resistance set value false
execute unless data storage a:data root.item.tag.a.stats.luck run data modify storage a:data root.item.tag.a.stats.luck set value false
execute unless data storage a:data root.item.tag.a.stats.stamina_regeneration run data modify storage a:data root.item.tag.a.stats.stamina_regeneration set value false

execute unless data storage a:data root.item.tag.a.stats.stamina_used run data modify storage a:data root.item.tag.a.stats.stamina_used set value false

function a:item/modify/lore/stats/init with storage a:data root.item.tag.a.stats