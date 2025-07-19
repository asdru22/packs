$summon $(id) ^$(x) ^$(y) ^0.3 {damage:1,Owner:$(owner),Motion:$(motion),pickup:$(pickup)b} 

#execute if data storage cgn:storage root.temp.ammo.components."minecraft:potion_contents" run function cgn:item/automatic_bow/tipped_arrow