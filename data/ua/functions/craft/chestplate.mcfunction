execute as @s store result score resistance_chestplate UUID0 run data get entity @s Thrower[0]
execute as @s store result score resistance_chestplate UUID1 run data get entity @s Thrower[1]
execute as @s store result score resistance_chestplate UUID2 run data get entity @s Thrower[2]
execute as @s store result score resistance_chestplate UUID3 run data get entity @s Thrower[3]
execute as @a if score @s UUID0 = resistance_chestplate UUID0 if score @s UUID1 = resistance_chestplate UUID1 if score @s UUID2 = resistance_chestplate UUID2 if score @s UUID3 = resistance_chestplate UUID3 unless entity @s[tag=hasBound] run tag @s add resistance_chestplate_bound
tellraw @a[tag=ua_debug] [{"text":"[UA_debug] ","color":"gold"},{"selector":"@a[tag=resistance_chestplate_bound]","color":"green"},{"text":" создал Артефакт Поглощения (незеритовый нагрудник)!","color":"gold"}]
execute as @a[tag=resistance_chestplate_bound] run tag @s add hasBound
execute unless entity @a[tag=resistance_chestplate_bound] run return 0


summon lightning_bolt ~ ~-2 ~
fill ~-1 ~-2 ~-1 ~1 ~-1 ~1 air
particle minecraft:glow ~ ~-1.5 ~ 1 1 1 0.3 200
execute positioned ~ ~-2 ~ run function ua:artefact_logic/resistance_chestplate/getitem
playsound minecraft:ui.toast.challenge_complete ambient @a[distance=..15] ~ ~-2 ~ 1
scoreboard players set resistance_chestplate unique_artefacts 1
bossbar set minecraft:chestplate_cd players @a[tag=resistance_chestplate_bound]
kill @s[nbt={Item:{tag:{Activator:1}}}]