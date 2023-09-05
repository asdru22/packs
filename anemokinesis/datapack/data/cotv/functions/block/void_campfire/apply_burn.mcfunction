scoreboard players set @s smithed.damage 5
tag @s add cotv.dummyamage.void_campfire
function #smithed:core/pub/entity/damage/apply
tag @s remove cotv.dummyamage.void_campfire
