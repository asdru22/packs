tag @s add cbs.temp
$execute summon item_display run function cbs:display/item_select/item {item:$(item)}
tag @s remove cbs.temp
tag @s add cbs.item_select

$summon text_display ~ ~-1 ~2 {width:150f,alignment:"left",Tags:[cbs.item_select],view_range:1f,billboard:"fixed",line_width:150,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,2f,-2.49f],scale:[1f,1f,1f]},text:'{"translate":"cbs.desc.$(item)","with":[{"translate":"cbs.font.stamina","font":"cbs:main","color":"white"}]}',background:2130772014}

$summon text_display ~ ~-1 ~1 {width:50f,alignment:"left",Tags:[cbs.item_select],view_range:1f,billboard:"fixed",line_width:500,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,-0.49f],scale:[1f,1f,1f]},text:'{"translate":"cbs.tooltip","with":[{"translate":"cbs.item.$(item)","color":"yellow","underlined":true},{"text":"$(offense)","font":"cbs:main","color":"#FF0000"},{"translate":"$(defense)","font":"cbs:main","color":"#00FFFF"},{"translate":"$(utility)","font":"cbs:main","color":"#FF00FF"}]}',background:2130772014}