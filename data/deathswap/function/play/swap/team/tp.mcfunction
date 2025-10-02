#swap/team/tp

# reset | calculated = original
execute as @e[tag=pos] run scoreboard players operation @s deathswap.swap_calculated = @s deathswap.swap_original

# reset | calculated -1
scoreboard players remove @e[tag=pos] deathswap.swap_calculated 1

# reset | calculated = 0 --> count
execute as @e[tag=pos] if score @s deathswap.swap_calculated matches 0 run scoreboard players operation @s deathswap.swap_calculated = count deathswap.swap_original

# calculated - original = 0 --> swap
scoreboard players operation @e[tag=pos] deathswap.swap_calculated -= @s deathswap.swap_original

#tp
execute if entity @s[tag=red_pos] run tp @a[team=red,tag=player] @e[limit=1,scores={deathswap.swap_calculated=0}]
execute if entity @s[tag=blue_pos] run tp @a[team=blue,tag=player] @e[limit=1,scores={deathswap.swap_calculated=0}]
execute if entity @s[tag=yellow_pos] run tp @a[team=yellow,tag=player] @e[limit=1,scores={deathswap.swap_calculated=0}]
execute if entity @s[tag=green_pos] run tp @a[team=green,tag=player] @e[limit=1,scores={deathswap.swap_calculated=0}]