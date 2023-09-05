scoreboard players set @s adv.reload.melee 24
execute anchored eyes positioned ^ ^ ^ summon item_display run function adv:gameplay/item/melee/flail/setup
item replace entity @s weapon.mainhand with air