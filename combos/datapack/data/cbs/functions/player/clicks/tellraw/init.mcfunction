scoreboard players operation $temp cbs.dummy = @s cbs.clicks
data modify storage cbs:storage root.temp.clicks set value []

function cbs:player/clicks/tellraw/iter

title @s actionbar {"nbt":"root.temp.clicks[]","storage":"cbs:storage","separator":{"text":" - ","color":"green","underlined":false},"interpret":true,"underlined":true}