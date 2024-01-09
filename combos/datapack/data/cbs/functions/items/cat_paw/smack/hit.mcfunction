execute if entity @s[type=!player] facing entity @p[tag=cbs.me] eyes rotated ~ 30 positioned 0.0 0 0.0 positioned ^ ^ ^-1.2 summon marker run function cbs:technical/math/resolve_vector 
data modify entity @s Motion set from storage cbs:storage root.temp.val

scoreboard players set $strength delta.api.launch 9000
execute if entity @s[type=player] facing entity @p[tag=cbs.me] eyes rotated ~180 -30 positioned 0.0 0 0.0 run function delta:api/launch_looking

function cbs:player/apply_damage/init {amount:30,by:"@p[tag=cbs.me]"}