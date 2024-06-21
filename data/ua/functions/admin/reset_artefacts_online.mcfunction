tellraw @a[tag=ua_debug] [{"text":"[UA_debug] Сброшена привязка артефактов всех игроков, находящихся ","color":"gold"},{"text":"в сети","color":"gold","underlined":true},{"text":".","color":"gold"}]

execute as @a run function ua:soulforge/reset_artefact/route
function ua:admin/update_bossbar_players