setblock ~ ~-1 ~ minecraft:air
summon minecraft:item_display ~ ~ ~ {Tags:["vrm.block","vrm.tick","vrm.second_clock","vrm.moonlit_monolith","smithed.entity","smithed.block","vrm.ten_second_clock","vrm.moonlit_monolith.fixed"],transformation:{translation:[0.0f,-0.5f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.001f,1.001f,1.001f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},item:{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"vrm:block/moonlit_monolith"}},view_range:4.0f,Passengers:[\
{id:"minecraft:interaction",width:1.01f,height:-1f,response:1b,Tags:["vrm.moonlit_monolith.interaction"]},\
{id:"minecraft:item_display",Tags:["vrm.moonlit_monolith.moonstone"],item:{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"vrm:block/moonstone"}},transformation:{translation:[0.0f,0.5f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0f,0f,0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}\
]}
setblock ~ ~-1 ~ barrier

say place fixed