# Stats
- Damage
    - Stats:
        - 🗡 Melee Damage
        - 🏹 Ranged Damage
        - ⚗ Magic Damage
        - Crit Chance (%)
        - Crit Damage
        - Vitality (%) ($\textup{hp}+=\textup{dmg}*\textup{vit}/100$)
    - Scores:
        - Base Damage (Generic) (Player and Mobs)

- Health
    - Stats:
        - ❤ Max Health
        - Health Regeneration (%)
        - Time to Regenerate after last taking damage
        - Seconds between regeneration [?]
    - Scores:
        - Current Health
        - Max Health
        - Health Regeneration Percentage
        - Regen timer

- Defense
    - Stats:
        - Defense
        - Thorns (%)
    - Formula: $\textup{dam}_f = \frac{100 \cdot \textup{dam}}{\textup{def} + 100}$

- Magic
    - Stats:
        - Max Mana
        - Mana Regeration
        - Cast Cooldown
        - Cast Cost Reduction (%)
        - Seconds between regeneration [?]
    - Scores:
        - Current Mana
        - Max Mana
        - Cast Cooldown
        - Seconds between regeneration [?]

- Ranged
    - Stats 
        - Draw Speed (time needed to pull the bow in order to shoot a fully charged arrow)
        - ☄ Arrow Speed (speed multiplier for arrow once shot)
        - Stealth mode [?]

- Melee
    - Stats:
        - ✘ Attack Speed
        - ⚔ Reverberation (%) (chance to deal the amount of damage again)
    - Formula: number of strikes $n=\frac{\textup{rev}}{100}+1$, chance to deal $n$ strikes: $\textup{rev}\%100$

- Other (Active):
    - Stats:
       - ✿ Vigor ($\textup{hp}+=\textup{mob hp}*\textup{vig}/100$)

- Other (Passive):
    - ⚡ Movement Speed

