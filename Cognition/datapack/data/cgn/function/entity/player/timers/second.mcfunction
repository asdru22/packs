execute if entity @s[tag=cgn.riding_strider] run function cgn:item/vanilla/warped_fungus_on_a_stick/second

execute if entity @s[scores={cgn.leave_game=1..}] run function cgn:entity/player/preserve_scoreboards/init

execute if items entity @s weapon.mainhand #cgn:bloodwraught_briar_base[item_name='{"translate": "item.cgn.bloodwraught_briar"}'] run function cgn:item/bloodwraught_briar/second