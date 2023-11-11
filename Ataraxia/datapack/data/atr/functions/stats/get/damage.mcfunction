scoreboard players operation $damage atr.int = @s atr.stat.base_damage

execute if data storage atr:storage root.temp.attack{type:"melee"} run function atr:stats/get/damage_melee
execute if data storage atr:storage root.temp.attack{type:"ranged"} run function atr:stats/get/damage_ranged
execute if data storage atr:storage root.temp.attack{type:"magic"} run function atr:stats/get/damage_magic

# min is 0
scoreboard players operation $damage atr.int > #0 atr.int