#stop timer
execute if score arena deathswap.status matches 1 run return fail

#tick
scoreboard players add tick deathswap.timer 1

execute unless score arena deathswap.status matches 0 if score tick deathswap.timer matches 20 run scoreboard players add round_time deathswap.timer 1
execute unless score arena deathswap.status matches 0 if score tick deathswap.timer matches 20 run scoreboard players remove swap_countdown deathswap.timer 1
execute if score tick deathswap.timer matches 20 run scoreboard players add play_time deathswap.timer 1

#gmchange
execute if score gmchange deathswap.setting matches 1 if score tick deathswap.timer matches 20 run scoreboard players remove gmchange deathswap.timer 1

#random_effect
execute if score random_effect deathswap.setting matches 1 if score tick deathswap.timer matches 20 run scoreboard players remove random_effect deathswap.timer 1

#arena
execute if score arena deathswap.status matches 0 if score tick deathswap.timer matches 20 run scoreboard players remove arena deathswap.timer 1
execute if score arena deathswap.status matches 2 if score arena.shrink deathswap.status matches 0 if score tick deathswap.timer matches 20 run scoreboard players remove arena deathswap.timer 1
execute if score arena deathswap.status matches 2 if score arena.shrink deathswap.status matches 1 if score tick deathswap.timer matches 20 run scoreboard players add arena deathswap.timer 1

execute if score tick deathswap.timer matches 20 run scoreboard players set tick deathswap.timer 0