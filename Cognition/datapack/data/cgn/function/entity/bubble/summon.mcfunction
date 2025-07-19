$data merge entity @s {billboard:"center",teleport_duration:1,Tags:["cgn.tick","cgn.bubble","cgn.bubble_setup","cgn.bubble.$(bubble)","smithed.strict","smithed.entity","cgn.entity"],item:{id:"apple",count:1,components:{"minecraft:item_model":"cgn:entity/$(bubble)_bubble"}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},view_range:50}

execute summon armor_stand run function cgn:entity/bubble/armor_stand

schedule function cgn:entity/bubble/setup_schedule 1t

scoreboard players set @s cgn.dummy2 0