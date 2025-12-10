#ui/text_display_particle

#lobby
execute as @e[tag=lobby_text] at @s run tp @s ~ ~ ~ ~0.25 ~
execute as @e[tag=lobby_text] at @s positioned ^ ^ ^3 run particle end_rod ~ ~0.1 ~ 0 0 0 1 0 force

scoreboard players add *particle deathswap.timer 1
execute if score *particle deathswap.timer matches ..50 run function deathswap:ui/particle_circle
execute if score *particle deathswap.timer matches 51.. run scoreboard players set *particle deathswap.timer 0