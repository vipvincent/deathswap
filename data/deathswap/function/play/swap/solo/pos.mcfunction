#--------------------------------------------------
#Death Swap
#data/deathswap/function/play/swap/solo/pos.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

execute at @s run summon marker ~ ~ ~ {Tags:["pos","not_complete_pos"]}
tp @e[tag=pos,tag=not_complete_pos] @s

scoreboard players operation @e[tag=pos,tag=not_complete_pos] deathswap.swap_original = @s deathswap.swap_original
tag @e[tag=pos,tag=not_complete_pos] remove not_complete_pos