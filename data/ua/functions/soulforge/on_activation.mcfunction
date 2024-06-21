execute store result score soulforge_interaction UUID0 run data get entity @s interaction.player[0]
execute store result score soulforge_interaction UUID1 run data get entity @s interaction.player[1]
execute store result score soulforge_interaction UUID2 run data get entity @s interaction.player[2]
execute store result score soulforge_interaction UUID3 run data get entity @s interaction.player[3]


execute as @a at @s if score @s UUID0 = soulforge_interaction UUID0 if score @s UUID1 = soulforge_interaction UUID1 if score @s UUID2 = soulforge_interaction UUID2 if score @s UUID3 = soulforge_interaction UUID3 run tag @s add soulforge_interaction

scoreboard players set forge_action unique_artefacts 1
execute positioned ~ ~-2 ~-0.5 run function ua:soulforge/check_resources_activator
execute positioned ~ ~-2 ~-0.5 run function ua:soulforge/check_resources_reset
execute if score forge_action unique_artefacts matches 1 if entity @a[distance=..5,tag=soulforge_interaction,tag=hasBound] run scoreboard players set forge_action unique_artefacts 2

execute if score forge_action unique_artefacts matches 1 positioned ~ ~-2 ~-0.5 run function ua:soulforge/action/summon_book
execute if score forge_action unique_artefacts matches 2 positioned ~ ~-2 ~-0.5 run function ua:soulforge/action/retrieve_artifact
execute if score forge_action unique_artefacts matches 3 positioned ~ ~-2 ~-0.5 run function ua:soulforge/action/summon_activator
execute if score forge_action unique_artefacts matches 4 positioned ~ ~-2 ~-0.5 run function ua:soulforge/action/reset_artefact

execute as @a[tag=soulforge_interaction] run tellraw @a[tag=ua_debug] [{"text":"[UA_debug] Игрок ","color":"gold"},{"selector":"@s","color":"green"},{"text":" Взаимодействовал с кузней душ! Тип взаимодействия: ","color":"gold"},{"score":{"name":"forge_action","objective":"unique_artefacts"},"color":"green"}]


tag @a[distance=..10] remove soulforge_interaction
scoreboard players set soulforge_cooldown unique_artefacts 0
playsound minecraft:entity.ghast.shoot ambient @a[distance=..15] ~ ~ ~ 1
particle soul ~ ~.3 ~ 0 0 0 0.4 100