#--------------------------------------------------
#Death Swap
#data/deathswap/function/play/swap/solo/tp.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

# reset | (marker) original --> calculated | @s --> pos
execute as @e[tag=pos] run scoreboard players operation @s deathswap.swap_calculated = @s deathswap.swap_original

# marker - player = 1
scoreboard players operation @e[tag=pos] deathswap.swap_calculated -= @s deathswap.swap_calculated

# =1 --> swap
tp @s @e[tag=pos,scores={deathswap.swap_calculated=1},limit=1]