execute store result score $old_lvl adv.data run data get storage adv:storage root.temp.effects[{id:"armor_crush"}].lvl
execute store result score $new_lvl adv.data run data get storage adv:storage root.temp.apply_effect.lvl

execute if score $old_lvl adv.data <= $new_lvl adv.data run function adv:gameplay/effects/armor_crush/override 