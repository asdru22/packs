# weak +50%
execute if data storage a:data root.hit{element:"chaos"} store result score $e_damage_recieved var run data get storage a:data root.temp.amount 0.000150

# strong -50%
execute if data storage a:data root.hit{element:"stasis"} store result score $e_damage_recieved var run data get storage a:data root.temp.amount 0.000050