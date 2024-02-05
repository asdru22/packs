execute on target run scoreboard players set $target dsl.dummy 1
execute if score $target dsl.dummy matches 1 run function dsl:entity/cloudchime/has_target
execute unless predicate dsl:entity/vex_charge on passengers if entity @s[tag=dsl.cloudchime.attack] run function dsl:entity/cloudchime/stop_attack