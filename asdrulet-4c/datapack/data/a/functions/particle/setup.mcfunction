tag @s add setup
execute on vehicle run data modify entity @s Motion set from storage a:data root.particle.motion

data modify entity @s item.tag.frames set from storage a:data root.particle.frames