#--------------------------------------------------
#Death Swap
#data/deathswap/function/phase/gameplay/swap/assign_id.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

scoreboard players add *count deathswap.swap_original 1
scoreboard players operation @s deathswap.swap_original = *count deathswap.swap_original