advancement revoke @s only cgn:technical/entity_hurt_player/bloodwraught_briar
execute store result score $temp cgn.dummy run data get entity @s Health 10
execute if score $temp cgn.dummy matches ..50 run item modify entity @s weapon.mainhand cgn:bloodwraught_briar/bloom