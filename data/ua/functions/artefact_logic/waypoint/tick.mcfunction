execute as @a[tag=waypoint_bound,predicate=ua:artefact_logic/waypoint/is_holding] at @s run function ua:artefact_logic/waypoint/getitem

execute as @e[type=minecraft:ender_pearl,predicate=ua:artefact_logic/waypoint/is_pearl_entity] at @s run function ua:artefact_logic/waypoint/used


execute if score waypoint_cooldown unique_artefacts < waypoint unique_artefacts_settings run scoreboard players add waypoint_cooldown unique_artefacts 1
execute store result bossbar pearl_cd value run scoreboard players get waypoint_cooldown unique_artefacts
