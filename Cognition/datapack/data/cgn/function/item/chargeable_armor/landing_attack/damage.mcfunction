execute positioned ~ ~20 ~ facing entity @s eyes run function cgn:item/chargeable_armor/landing_attack/particle
$damage @s 6 cgn:player_lightning by @p[nbt={UUID:$(UUID)}]
scoreboard players remove #max_attacks cgn.dummy 1