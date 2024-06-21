# Clear artefacts if held by non-owner
execute as @a[predicate=ua:has_soulbound] run function ua:clear_artefacts

# Make artefacts unable to be picked up when non-owners are nearby, plus logic for artefacts drop button
execute as @e[type=item,predicate=ua:is_soulbound] at @s run function ua:itemtick

# Soulforge ticking, and global cooldown ticking.
execute if score soulforge_cooldown unique_artefacts < soulforge unique_artefacts_settings run scoreboard players add soulforge_cooldown unique_artefacts 1
execute as @e[type=interaction,tag=Soulforge] at @s run function ua:soulforge/tick
execute as @e[type=interaction,tag=Smallforge] at @s run function ua:soulforge/small/tick
# Give everyone lost artefacts after death
execute as @a[scores={ua_health=0}] if score get_artefacts_after_death unique_artefacts_settings matches 1 run tag @s add ua_dead
execute as @a[tag=ua_dead,tag=hasBound,scores={ua_health=1..}] if score get_artefacts_after_death unique_artefacts_settings matches 1 at @s run function ua:give_owned_artefacts


# tick every artefact logic's tick file
function ua:artefact_logic/infinite_steak/tick
function ua:artefact_logic/explosive_bow/tick
function ua:artefact_logic/allseeing_eye/tick
function ua:artefact_logic/resistance_chestplate/tick
function ua:artefact_logic/waypoint/tick
