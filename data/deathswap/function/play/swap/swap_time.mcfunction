#reset ronud_time
scoreboard players set round_time deathswap.timer 0

#swap_time
execute if score swap_time deathswap.setting matches 0 store result score swap_time deathswap.status run random value 31..60
execute if score swap_time deathswap.setting matches 1 store result score swap_time deathswap.status run random value 31..120
execute if score swap_time deathswap.setting matches 2 store result score swap_time deathswap.status run random value 31..180
execute if score swap_time deathswap.setting matches 3 store result score swap_time deathswap.status run random value 31..240
execute if score swap_time deathswap.setting matches 4 store result score swap_time deathswap.status run random value 31..300
execute if score swap_time deathswap.setting matches 5 run scoreboard players set swap_time deathswap.status 60
execute if score swap_time deathswap.setting matches 6 run scoreboard players set swap_time deathswap.status 120
execute if score swap_time deathswap.setting matches 7 run scoreboard players set swap_time deathswap.status 180
execute if score swap_time deathswap.setting matches 8 run scoreboard players set swap_time deathswap.status 240
execute if score swap_time deathswap.setting matches 9 run scoreboard players set swap_time deathswap.status 300

#swap_time = swap_countdown
scoreboard players operation swap_countdown deathswap.timer = swap_time deathswap.status