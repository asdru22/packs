advancement revoke @s only srn:effects_changed/heal

execute unless predicate srn:entity/has_instant_health run function srn:entity/player/heal/remove_attribute