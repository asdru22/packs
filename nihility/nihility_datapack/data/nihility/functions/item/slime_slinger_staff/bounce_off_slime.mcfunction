scoreboard players set distance nihility.data 15
scoreboard players set found_slime nihility.data 1
#tellraw @p ["Found Slime: ",{"score":{"name": "found_slime","objective":"nihility.data"}}]

execute if score bounces nihility.data matches ..3 facing entity @e[type=slime,tag=nihility.slime,distance=..5,tag=!nihility.bounce,sort=nearest,limit=1] eyes run function nihility:item/slime_slinger_staff/cast