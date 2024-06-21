kill @s[type=eye_of_ender]
execute if score allseeing_eye_cooldown unique_artefacts < allseeing_eye unique_artefacts_settings run return 0
scoreboard players set allseeing_eye_cooldown unique_artefacts 0
playsound minecraft:block.beacon.power_select ambient @a[distance=..7] ~ ~ ~ 1
effect give @e[distance=..50,tag=!allseeing_eye_bound] minecraft:glowing 10 0 true