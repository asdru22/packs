# Commands to place a moonlit monolith

# at an expanse
execute if predicate haywire:location_check/in_the_expanse if block ~ ~-2 ~ vault run return run function haywire:block/moonlit_monolith/place_fixed

setblock ~ ~-1 ~ minecraft:air
summon minecraft:item_display ~ ~ ~ {Tags:["haywire.block","haywire.tick","haywire.second_clock","haywire.moonlit_monolith","smithed.entity","smithed.block","haywire.ten_second_clock","haywire.prevents_hoppers","haywire.newly_placed_update_light"],transformation:{translation:[0.0f,-0.5f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.001f,1.001f,1.001f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},item:{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"haywire:moonlit_monolith"}},view_range:4.0f}
execute positioned ~ ~-1 ~ run function haywire:block/hopper_updating/fill
setblock ~ ~-1 ~ minecraft:furnace{CustomName:{"font":"haywire:technical","translate":"block.haywire.moonlit_monolith.name"},lock:{components:{"minecraft:custom_data":{haywire:{moonlit_monolith:1b}}}}}

if cond1 

else..

execute if ... run retrun ...
...
...