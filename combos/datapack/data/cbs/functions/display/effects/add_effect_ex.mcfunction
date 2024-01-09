data modify storage cbs:storage root.temp.effects set from entity @s EnderItems[0].tag.cbs.effects
data modify storage cbs:storage root.temp.effects append value {id:"protection",display:'{"text":"❁","color":"yellow"}'}
item modify entity @s enderchest.0 cbs:copy_effects
function cbs:display/effects/init