execute store result score lore.damage asd.d run data get storage asd:data root.temp.editing.tag.base.Stats.Damage
execute store result score lore.electricity_req asd.d run data get storage asd:data root.temp.editing.tag.base.Stats.ElectricityUsed
execute store result score lore.attack_speed asd.d run data get storage asd:data root.temp.editing.tag.base.Stats.AttackSpeed
execute store result score lore.arrow_speed asd.d run data get storage asd:data root.temp.editing.tag.base.Stats.ArrowSpeed
execute store result score lore.crit_chance asd.d run data get storage asd:data root.temp.editing.tag.base.Stats.CritChance
execute store result score lore.crit_damage asd.d run data get storage asd:data root.temp.editing.tag.base.Stats.CritDamage
execute store result score lore.lifesteal asd.d run data get storage asd:data root.temp.editing.tag.base.Stats.Lifesteal
execute store result score lore.health asd.d run data get storage asd:data root.temp.editing.tag.base.Stats.Health
execute store result score lore.hp_regen asd.d run data get storage asd:data root.temp.editing.tag.base.Stats.HpRegen
execute store result score lore.defense asd.d run data get storage asd:data root.temp.editing.tag.base.Stats.Defense
execute store result score lore.DamageReduction asd.d run data get storage asd:data root.temp.editing.tag.base.Stats.DamageReduction
execute store result score lore.max_electricity asd.d run data get storage asd:data root.temp.editing.tag.base.Stats.MaxElectricity
execute store result score lore.electricity_regen asd.d run data get storage asd:data root.temp.editing.tag.base.Stats.ElectricityRegen
execute store result score lore.dodge_chance asd.d run data get storage asd:data root.temp.editing.tag.base.Stats.DodgeChance
execute store result score lore.knockback_resistance asd.d run data get storage asd:data root.temp.editing.tag.base.Stats.KnockbackResistance
execute store result score lore.movement_speed asd.d run data get storage asd:data root.temp.editing.tag.base.Stats.MovementSpeed
execute store result score lore.mining_speed asd.d run data get storage asd:data root.temp.editing.tag.base.Stats.MiningSpeed
execute store result score lore.luck asd.d run data get storage asd:data root.temp.editing.tag.base.Stats.Luck
execute store result score lore.ability_lines asd.d if data storage asd:data root.temp.editing.tag.base.Ability[]
execute store result score lore.LevelRequired asd.d run data get storage asd:data root.temp.editing.tag.base.LevelRequired
execute store result score lore.sell_price asd.d run data get storage asd:data root.temp.editing.tag.base.SellPrice
scoreboard players set lore.durability asd.d 0
execute store result score lore.durability asd.d run data get storage asd:data root.temp.editing.tag.base.Durability.current
execute store result score lore.cooldown asd.d run data get storage asd:data root.temp.editing.tag.base.AbilityCooldown 2 