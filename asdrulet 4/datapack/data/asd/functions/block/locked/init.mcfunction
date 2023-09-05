title @s actionbar ""
stopsound @s * block.chest.locked
scoreboard players set d.0 asd.d 20
function asd:block/locked/cast
advancement revoke @s only asd:technical/block/locked