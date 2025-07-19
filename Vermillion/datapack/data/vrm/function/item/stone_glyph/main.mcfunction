data modify storage vrm:temp root.pos set from entity @n[type=item_display,tag=vrm.moonlit_monolith,tag=!vrm.moonlit_monolith.balemoon,distance=..32] Pos
data remove storage vrm:temp root.macro_input

data modify storage vrm:temp root.macro_input.x set from storage vrm:temp root.pos[0]
data modify storage vrm:temp root.macro_input.y set from storage vrm:temp root.pos[1]
data modify storage vrm:temp root.macro_input.z set from storage vrm:temp root.pos[2]

execute anchored eyes positioned ^ ^ ^ positioned ~ ~-0.5 ~ run function vrm:item/stone_glyph/particle with storage vrm:temp root.macro_input