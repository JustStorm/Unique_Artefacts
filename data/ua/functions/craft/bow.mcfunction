execute as @s store result score explosive_bow UUID0 run data get entity @s Thrower[0]
execute as @s store result score explosive_bow UUID1 run data get entity @s Thrower[1]
execute as @s store result score explosive_bow UUID2 run data get entity @s Thrower[2]
execute as @s store result score explosive_bow UUID3 run data get entity @s Thrower[3]
execute as @a if score @s UUID0 = explosive_bow UUID0 if score @s UUID1 = explosive_bow UUID1 if score @s UUID2 = explosive_bow UUID2 if score @s UUID3 = explosive_bow UUID3 unless entity @s[tag=hasBound] run tag @s add explosive_bow_bound
tellraw @a[tag=ua_debug] [{"text":"[UA_debug] ","color":"gold"},{"selector":"@a[tag=explosive_bow_bound]","color":"green"},{"text":" создал Артефакт Хаоса (взрывной лук)!","color":"gold"}]
execute as @a[tag=explosive_bow_bound] run tag @s add hasBound
execute unless entity @a[tag=explosive_bow_bound] run return 0


summon lightning_bolt ~ ~-2 ~
fill ~-1 ~-2 ~-1 ~1 ~-1 ~1 air
particle minecraft:glow ~ ~-1.5 ~ 1 1 1 0.3 200
execute positioned ~ ~-2 ~ run function ua:artefact_logic/explosive_bow/getitem
playsound minecraft:ui.toast.challenge_complete ambient @a[distance=..15] ~ ~-2 ~ 1
scoreboard players set explosive_bow unique_artefacts 1
bossbar set minecraft:arrow_cd players @a[tag=explosive_bow_bound]
kill @s[nbt={Item:{tag:{Activator:1}}}]