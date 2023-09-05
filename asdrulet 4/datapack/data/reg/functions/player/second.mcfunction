execute if entity @s[x=86,y=122,z=153,dx=0] run tp @s 82 152 111
execute if entity @s[x=80,y=152,z=111,dx=1] run tp @s 86 122 151

execute if score @s[tag=asd.in_tutorial] asd.timer matches 1.. run function reg:events/non_reouccuring/tutorial/missile/countdown/second