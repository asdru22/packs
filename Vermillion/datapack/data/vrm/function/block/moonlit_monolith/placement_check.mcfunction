# Commands to place a moonlit mono

execute if data block ~ ~ ~ {Items:[{components:{"minecraft:custom_data":{vrm:{placed_block:1b,block:"moonlit_monolith"}}}}]} positioned ~ ~0.5 ~ run function vrm:block/moonlit_monolith/place