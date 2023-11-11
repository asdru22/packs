execute positioned ~ ~20 ~ facing entity @s eyes run function cgn:item/chargeable_armor/in_air/mob_lightning
$damage @s 4 cgn:player_lightning by $(out)
scoreboard players remove #max_attacks cgn.dummy 1