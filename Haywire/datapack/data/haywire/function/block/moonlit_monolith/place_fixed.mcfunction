setblock ~ ~-1 ~ minecraft:air
summon minecraft:item_display ~ ~ ~ {Tags:["haywire.block","haywire.tick","haywire.second_clock","haywire.moonlit_monolith","smithed.entity","smithed.block","haywire.ten_second_clock","haywire.moonlit_monolith.fixed"],transformation:{translation:[0.0f,-0.5f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.001f,1.001f,1.001f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},item:{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"haywire:moonlit_monolith"}},view_range:4.0f,Passengers:[\
{id:"minecraft:interaction",width:1.01f,height:-1f,response:1b,Tags:["haywire.moonlit_monolith.interaction"]},\
{id:"minecraft:item_display",Tags:["haywire.moonlit_monolith.moonstone"],item:{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"haywire:moonstone"}},transformation:{translation:[0.0f,0.5f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0f,0f,0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}\
]}
setblock ~ ~-1 ~ barrier