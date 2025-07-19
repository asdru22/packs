execute store result score $temp cgn.dummy run data get entity @s Health 10
execute if score $temp cgn.dummy matches ..50 run return run execute if items entity @s weapon.mainhand poisonous_potato[minecraft:custom_data~{cgn:{blooming:false}}] run item modify entity @s weapon.mainhand cgn:bloodwraught_briar/bloom

execute if items entity @s weapon.mainhand netherite_sword[minecraft:custom_data~{cgn:{blooming:true}}] run return run item modify entity @s weapon.mainhand cgn:bloodwraught_briar/normal