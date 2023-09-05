tellraw @s[tag=asd.dmg_out] ["\n| Damage recived by target: ",{"score":{"name": "real.damage_recived","objective": "asd.d"}}]
execute if entity @s[advancements={asd:technical/player/on_hit={melee_hit=true}}] run data modify storage asd:data root.temp.attack.type set value {Type:"melee",display:'{"text":"\\u0036","font":"asd:main"}'}
execute if entity @s[advancements={asd:technical/player/on_hit={ranged_hit=true}}] run data modify storage asd:data root.temp.attack.type set value {Type:"ranged",display:'{"text":"\\u0037","font":"asd:main"}'}
execute if entity @s[advancements={asd:technical/player/on_hit={ranged_exp_hit=true}}] run data modify storage asd:data root.temp.attack.type set value {Type:"ranged",display:'{"text":"\\u0037","font":"asd:main"}'}
execute if entity @s[advancements={asd:technical/player/on_hit={magic_hit=true}}] run data modify storage asd:data root.temp.attack.type set value {Type:"magic",display:'{"text":"\\u0038","font":"asd:main"}'}
execute if entity @s[advancements={asd:technical/player/on_hit={magic_hit=true}}] run scoreboard players set real.damage_recived asd.d 100
execute if data storage asd:data root.temp.equipment.mainhand.tag.base.Durability run function asd:item/custom/durability/slots/mainhand
function asd:player/stats/get/get_items
function asd:player/stats/damage/get
function asd:player/stats/crit_chance/get
function asd:player/stats/lifesteal/get

tellraw @s[tag=asd.dmg_out] ["| Overall damage: ",{"score":{"name": "s.damage","objective": "asd.d"}}]
advancement revoke @s only asd:technical/player/on_hit