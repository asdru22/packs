data modify storage cgn:storage root.temp.display insert -1 value {"translate":"actionbar.cgn.electroplasm.full"}
scoreboard players remove #current cgn.dummy 1
execute if score #current cgn.dummy matches 1.. run function cgn:entity/player/electroplasm/display/full_iter