$damage @s $(damage) cgn:double_edged_sword by $(out)
data modify storage cgn:storage root.temp.tags set from entity @e[type=item_display,tag=cgn.double_edged_sword,tag=cgn.me,limit=1,sort=nearest] Tags 

execute if data storage cgn:storage root.temp{tags:["cgn.double_edged_sword.fire_aspect"]} run data modify entity @s Fire set value 60s