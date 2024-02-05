execute if data storage a:data root.data.stats.damage run function a:item/modify/quality/increase_stat {stat:"damage"}

execute if data storage a:data root.data.stats.attack_speed run function a:item/modify/quality/increase_stat {stat:"attack_speed"}
execute if data storage a:data root.data.stats.reach run function a:item/modify/quality/increase_stat {stat:"reach"}
execute if data storage a:data root.data.stats.crit_chance run function a:item/modify/quality/increase_stat {stat:"crit_chance"}
execute if data storage a:data root.data.stats.crit_damage run function a:item/modify/quality/increase_stat {stat:"crit_damage"}
execute if data storage a:data root.data.stats.projectile_speed run function a:item/modify/quality/increase_stat {stat:"projectile_speed"}
execute if data storage a:data root.data.stats.cast_cooldown run function a:item/modify/quality/decrease_stat {stat:"cast_cooldown"}
execute if data storage a:data root.data.stats.knockback run function a:item/modify/quality/increase_stat {stat:"knockback"}

execute if data storage a:data root.data.stats.max_health run function a:item/modify/quality/increase_stat {stat:"max_health"}
execute if data storage a:data root.data.stats.defense run function a:item/modify/quality/increase_stat {stat:"defense"}
execute if data storage a:data root.data.stats.max_stamina run function a:item/modify/quality/increase_stat {stat:"max_stamina"}
execute if data storage a:data root.data.stats.movement_speed run function a:item/modify/quality/increase_stat {stat:"movement_speed"}
execute if data storage a:data root.data.stats.knockback_resistance run function a:item/modify/quality/increase_stat {stat:"knockback_resistance"}
execute if data storage a:data root.data.stats.luck run function a:item/modify/quality/increase_stat {stat:"luck"}
execute if data storage a:data root.data.stats.stamina_regeneration run function a:item/modify/quality/increase_stat {stat:"stamina_regeneration"}

execute if data storage a:data root.data.stats.stamina_used run function a:item/modify/quality/decrease_stat {stat:"stamina_used"}