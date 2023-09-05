data modify storage nihility:storage root.temp.merge.final append from storage nihility:storage root.temp.merge.temp[-1]

data merge storage smithed:log {message:'["Adding ",{"color":"yellow","nbt":"root.temp.merge.temp[-1].id","storage":"nihility:storage"},"!"]',level:1,type:'INFO'}
function #smithed:core/pub/technical/tools/log
