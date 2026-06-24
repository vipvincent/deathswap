#--------------------------------------------------
#Death Swap
#data/deathswap/function/play/swap/solo/main.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#assign_id
execute as @a[tag=player,sort=random] run function deathswap:play/swap/assign_id

#pos
execute as @a[tag=player] run function deathswap:play/swap/solo/pos

#calculate 
# player = count --> 0
# marker - player = 1 --> swap
# Example:
# marker 1 2 3 4 5 6 
# player 6 1 2 3 4 5 (6 --> 0)

# (player) original --> calculated
execute as @a[tag=player] run scoreboard players operation @s deathswap.swap_calculated = @s deathswap.swap_original
# player = count --> 0
execute as @a[tag=player] if score @s deathswap.swap_calculated = *count deathswap.swap_original run scoreboard players set @s deathswap.swap_calculated 0

#tp
execute as @a[tag=player] run function deathswap:play/swap/solo/tp
