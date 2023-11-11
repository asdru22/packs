scoreboard players set #effect cgn.dummy 4
scoreboard players set #loop cgn.dummy 10
execute if score #targets cgn.dummy matches 1.. run function cgn:item/chargeable_armor/lightning/init
execute if score #targets cgn.dummy matches 1.. run damage @s 5 cgn:player_lightning
scoreboard players remove #targets cgn.dummy 1