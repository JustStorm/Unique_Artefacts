tellraw @a[tag=ua_debug] [{"text":"[UA_debug] От игрока ","color":"gold"},{"selector":"@s","color":"green"},{"text":" были отвязаны все артефакты!","color":"gold"}]

execute as @s run function ua:soulforge/reset_artefact/route
function ua:admin/update_bossbar_players