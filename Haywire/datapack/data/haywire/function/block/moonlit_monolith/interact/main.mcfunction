tag @s add haywire.moonlit_monolith.balemoon
# Effects
fillbiome ~-15 ~-5 ~-15 ~15 ~15 ~15 haywire:balemoon
playsound haywire:block.moonlit_monolith.balemoon_rising ambient @a[distance=..32] ~ ~ ~ 1 0.9

# Moonstone
execute on passengers if entity @s[type=item_display] run item modify entity @s contents {"function":"minecraft:set_custom_data","tag":"{haywire:{moonstone:\"balemoon\"}}"}

# Clear item from players
item modify entity @p[advancements={haywire:technical/player_interacted_with_entity/fixed_moonlit_monolith=true},gamemode=!creative] weapon.mainhand {"function":"set_count","add":true,"count":-1}

# Setup storage
data modify storage haywire:temp root.balemoon set value {players:[],mobs:[]}
function haywire:technical/string_uuid/init
data modify entity @s item.components."minecraft:custom_data".haywire.string_uuid set from storage haywire:temp root.string_uuid
data modify storage haywire:temp root.balemoon.moonlit_monolith set from storage haywire:temp root.string_uuid
execute as @a[gamemode=!spectator] run function haywire:block/moonlit_monolith/interact/check_glyphs with storage haywire:temp root.glyph

data modify storage haywire:storage root.balemoon insert -1 from storage haywire:temp root.balemoon