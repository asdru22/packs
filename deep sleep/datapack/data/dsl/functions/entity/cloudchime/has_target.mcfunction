execute store result score $motion_x dsl.dummy run data get entity @s Motion[0] 10000
execute store result score $motion_z dsl.dummy run data get entity @s Motion[2] 10000
execute if predicate dsl:entity/vex_charge on passengers run function dsl:entity/cloudchime/attack
