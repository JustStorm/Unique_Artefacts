tellraw @a[tag=ua_debug] {"text":"[UA_debug] Успешно загружено! При багах/ошибках обращаться в дискорд lastparadox#0.","color":"gold"}
scoreboard objectives add unique_artefacts dummy
execute unless score already_setup unique_artefacts matches 1 run function ua:first_launch

# Cooldowns reset
scoreboard players set arrow_explode_cooldown unique_artefacts 0
scoreboard players set allseeing_eye_cooldown unique_artefacts 0
scoreboard players set resistance_chestplate_cooldown unique_artefacts 0
scoreboard players set soulforge_cooldown unique_artefacts 0
scoreboard players set waypoint_cooldown unique_artefacts 0

# Schedule functions
function ua:initiate_struct_check
function ua:update_uuids
function ua:updatesettings
function ua:soulforge/souleffect
function ua:artefact_logic/resistance_chestplate/playertick
function ua:garbage_collector