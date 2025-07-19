data modify storage haywire:temp root.pos set from entity @n[type=item_display,tag=haywire.moonlit_monolith,tag=!haywire.moonlit_monolith.balemoon,distance=..32] Pos
data remove storage haywire:temp root.macro_input

data modify storage haywire:temp root.macro_input.x set from storage haywire:temp root.pos[0]
data modify storage haywire:temp root.macro_input.y set from storage haywire:temp root.pos[1]
data modify storage haywire:temp root.macro_input.z set from storage haywire:temp root.pos[2]

execute anchored eyes positioned ^ ^ ^ positioned ~ ~-0.5 ~ run function haywire:item/stone_glyph/particle with storage haywire:temp root.macro_input