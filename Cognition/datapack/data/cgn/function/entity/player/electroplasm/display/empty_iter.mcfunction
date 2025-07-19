data modify storage cgn:storage root.temp.display insert 0 value {"translate":"actionbar.cgn.electroplasm.empty"}
scoreboard players remove #max cgn.dummy 1
execute if score #max cgn.dummy matches 1.. run function cgn:entity/player/electroplasm/display/empty_iter