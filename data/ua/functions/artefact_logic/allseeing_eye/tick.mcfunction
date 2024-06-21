execute as @a[tag=allseeing_eye_bound,predicate=ua:artefact_logic/allseeing_eye/is_holding] at @s run function ua:artefact_logic/allseeing_eye/getitem
execute as @e[type=minecraft:eye_of_ender,predicate=ua:artefact_logic/allseeing_eye/is_allseeing_eye_entity] at @s run function ua:artefact_logic/allseeing_eye/used

execute if score allseeing_eye_cooldown unique_artefacts < allseeing_eye unique_artefacts_settings run scoreboard players add allseeing_eye_cooldown unique_artefacts 1
execute store result bossbar eye_cd value run scoreboard players get allseeing_eye_cooldown unique_artefacts