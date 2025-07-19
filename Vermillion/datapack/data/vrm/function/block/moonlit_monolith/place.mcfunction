# Commands to place a moonlit monolith

# at a hollow
execute if predicate vrm:location_check/in_the_hollow if block ~ ~-2 ~ vault run return run function vrm:block/moonlit_monolith/place_fixed

setblock ~ ~-1 ~ minecraft:air
summon minecraft:item_display ~ ~ ~ {Tags:["vrm.block","vrm.tick","vrm.second_clock","vrm.moonlit_monolith","smithed.entity","smithed.block","vrm.ten_second_clock","vrm.prevents_hoppers","vrm.newly_placed_update_light"],transformation:{translation:[0.0f,-0.5f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.001f,1.001f,1.001f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},item:{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"vrm:block/moonlit_monolith"}},view_range:4.0f}
execute positioned ~ ~-1 ~ run function vrm:block/hopper_updating/fill
setblock ~ ~-1 ~ minecraft:furnace{CustomName:{"font":"vrm:technical","translate":"block.vrm.moonlit_monolith.name"},lock:{components:{"minecraft:custom_data":{vrm:{moonlit_monolith:1b}}}}}
