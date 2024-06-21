execute as @e[type=minecraft:interaction,tag=Soulforge] at @s if score soulforge_cooldown unique_artefacts >= soulforge unique_artefacts_settings run particle soul ~ ~0.3 ~ 0.2 0.2 0.2 0.15 1
execute as @e[type=minecraft:interaction,tag=Smallforge] at @s run particle soul ~ ~0.3 ~ 0.2 0.2 0.2 0.15 1

schedule function ua:soulforge/souleffect 5t replace