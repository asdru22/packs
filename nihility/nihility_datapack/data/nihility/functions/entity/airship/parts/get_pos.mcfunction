data modify entity @s Rotation set from storage nihility:storage root.temp.rot
execute rotated as @s if data storage nihility:storage root.temp{keystrokes:["fwd"]} run tp @s ^ ^ ^1
execute rotated as @s if data storage nihility:storage root.temp{keystrokes:["back"]} run tp @s ^ ^ ^-1
execute rotated as @s if data storage nihility:storage root.temp{keystrokes:["left"]} run tp @s ^0.2 ^ ^
execute rotated as @s if data storage nihility:storage root.temp{keystrokes:["right"]} run tp @s ^-0.2 ^ ^

data modify storage nihility:storage root.temp.motion set from entity @s Pos