#--------------------------------------------------
#Death Swap
#data/deathswap/function/play/swap/swap_time.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#reset ronud_time
scoreboard players set *round_time deathswap.timer 0

#swap_time
execute store result score *swap_time deathswap.status run random value 31..180

#swap_time = swap_countdown
scoreboard players operation *swap_countdown deathswap.timer = *swap_time deathswap.status