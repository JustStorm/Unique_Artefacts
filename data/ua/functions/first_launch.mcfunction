tellraw @a[tag=ua_debug] {"text":"[UA_debug] Первый запуск, инициализация.","color":"gold"}

# Creating required scoreboards
scoreboard objectives add ua_health health
scoreboard objectives add unique_artefacts_settings dummy
scoreboard objectives add unique_artefacts dummy
scoreboard objectives add UUID0 dummy
scoreboard objectives add UUID1 dummy
scoreboard objectives add UUID2 dummy
scoreboard objectives add UUID3 dummy

# Creating cooldown bossbars
bossbar add arrow_cd {"text":"Откат взрывной стрелы"}
bossbar set minecraft:arrow_cd color red
bossbar set minecraft:arrow_cd max 100

bossbar add chestplate_cd {"text":"Откат защитного барьера"}
bossbar set chestplate_cd color green
bossbar set chestplate_cd max 400

bossbar add eye_cd {"text":"Откат Всевидения"}
bossbar set eye_cd color blue
bossbar set eye_cd max 1200

bossbar add pearl_cd {"text":"Откат Телепортации"}
bossbar set pearl_cd color blue
bossbar set pearl_cd max 1200

# Variable initialization
function ua:admin/reset_artefacts_globally
scoreboard players set already_setup unique_artefacts 1

#Settings "menu" (not really)
scoreboard players set ♦♦♦♦_Cooldowns_in_ticks_♦♦♦♦ unique_artefacts_settings 9999
scoreboard players set ♦♦♦♦♦_Feature_Toggles_♦♦♦♦♦ unique_artefacts_settings 10
scoreboard players set ♦♦♦♦♦♦♦♦♦♦♦♦♦♦♦♦♦♦♦♦♦♦♦♦♦ unique_artefacts_settings -1

# kinda game rules
scoreboard players set infinite_steak_craft unique_artefacts_settings 1
scoreboard players set absolute_shield_craft unique_artefacts_settings 1
scoreboard players set explosive_bow_craft unique_artefacts_settings 1
scoreboard players set allseeing_eye_craft unique_artefacts_settings 1
scoreboard players set knockback_stick_craft unique_artefacts_settings 1
scoreboard players set resistance_chestplate_craft unique_artefacts_settings 1
scoreboard players set waypoint_craft unique_artefacts_settings 1
scoreboard players set get_artefacts_after_death unique_artefacts_settings 0


#Cooldowns in ticks
scoreboard players set allseeing_eye unique_artefacts_settings 1200
scoreboard players set arrow_explode unique_artefacts_settings 100
scoreboard players set soulforge unique_artefacts_settings 600
scoreboard players set resistance_chestplate unique_artefacts_settings 200
scoreboard players set waypoint unique_artefacts_settings 1200
