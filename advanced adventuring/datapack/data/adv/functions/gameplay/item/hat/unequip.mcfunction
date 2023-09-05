data remove storage adv:storage root.temp

execute if entity @s[advancements={adv:technical/inventory_changed/hat/unequip={mushhat=true}}] run function adv:gameplay/item/hat/unequip/mushhat

execute if entity @s[advancements={adv:technical/inventory_changed/hat/unequip={shellmet=true}}] run function adv:gameplay/item/hat/unequip/shellmet

execute if entity @s[advancements={adv:technical/inventory_changed/hat/unequip={archer_hat=true}}] run function adv:gameplay/item/hat/unequip/archer_hat

execute if entity @s[advancements={adv:technical/inventory_changed/hat/unequip={explorer_hat=true}}] run function adv:gameplay/item/hat/unequip/explorer_hat

execute if entity @s[advancements={adv:technical/inventory_changed/hat/unequip={miner_helmet=true}}] run function adv:gameplay/item/hat/unequip/miner_helmet

execute if entity @s[advancements={adv:technical/inventory_changed/hat/unequip={crown_ruby=true}}] run function adv:gameplay/item/hat/unequip/crown_ruby

execute if entity @s[advancements={adv:technical/inventory_changed/hat/unequip={crown_sapphire=true}}] run function adv:gameplay/item/hat/unequip/crown_sapphire

execute if entity @s[advancements={adv:technical/inventory_changed/hat/unequip={crown_peridot=true}}] run function adv:gameplay/item/hat/unequip/crown_peridot

execute if entity @s[advancements={adv:technical/inventory_changed/hat/unequip={crown_diamond=true}}] run function adv:gameplay/item/hat/unequip/crown_diamond

advancement revoke @s only adv:technical/inventory_changed/hat/unequip