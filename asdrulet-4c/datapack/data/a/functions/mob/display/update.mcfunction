execute if entity @s[tag=element.none] run data modify storage a:data root.display.element set value {"text":""}
execute if entity @s[tag=element.chaos] run data modify storage a:data root.display.element set value {"translate":"icon.element.chaos","color":"#CC3D6D"}
execute if entity @s[tag=element.vortex] run data modify storage a:data root.display.element set value {"translate":"icon.element.vortex","color":"#74E3CD"}
execute if entity @s[tag=element.rupture] run data modify storage a:data root.display.element set value {"translate":"icon.element.rupture","color":"#FFF67A"}
execute if entity @s[tag=element.stasis] run data modify storage a:data root.display.element set value {"translate":"icon.element.stasis","color":"#644DFF"}

execute in overworld positioned 0 -64 0 run function a:mob/display/text