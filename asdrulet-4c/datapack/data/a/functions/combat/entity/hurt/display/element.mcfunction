$data merge entity @s {Tags:[damage_indicator,tick],teleport_duration:4,billboard:"center",start_interpolation:0,interpolation_duration:4,default_background:0b,shadow:0b,see_through:0b,alignment:"center",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1f,1f,1f]},text:'[{"text":"$(damage_int).$(damage_dec)$(icon)","color":"$(crit_color)"},{"text":" $(e_damage_int).$(e_damage_dec)","color":"$(color)"},{"translate":"icon.element.$(element)","font":"a:main","color":"$(color)"}]',background:16711680,brightness:{sky:15,block:15}}

tp @s ~ ~0.5 ~