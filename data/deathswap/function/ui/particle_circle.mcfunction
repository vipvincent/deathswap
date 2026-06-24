#--------------------------------------------------
#Death Swap
#data/deathswap/function/ui/particle_circle.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#lobby
execute as @e[tag=lobby_text] at @s run tp @s ~ ~ ~ ~10 ~
execute as @e[tag=lobby_text] at @s positioned ^ ^ ^5 run particle end_rod ~ ~0.251 ~ 0 0 0 1 0 force
