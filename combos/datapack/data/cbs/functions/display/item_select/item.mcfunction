$loot replace entity @s container.0 loot cbs:item/$(item)
tag @s add cbs.item_select
ride @s mount @e[type=interaction,tag=cbs.temp,limit=1,sort=nearest]

data merge entity @s {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1f,1f,1f]}}