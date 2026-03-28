#swap/team/tp

# calculated = original
# calculated -1
# calculated = 0 --> count 
# calculated - original = 0 --> swap
# Example:
# original   1 2 3 4
# calculated 0 1 2 3 (1-1=0 --> 4)

# reset | calculated = original
execute as @e[tag=pos,tag=calculated] run scoreboard players operation @s deathswap.swap_calculated = @s deathswap.swap_original

# calculated -1
scoreboard players remove @e[tag=pos,tag=calculated] deathswap.swap_calculated 1

# calculated = 0 --> count
execute as @e[tag=pos,tag=calculated] if score @s deathswap.swap_calculated matches 0 run scoreboard players operation @s deathswap.swap_calculated = *count deathswap.swap_original

# calculated - original = 0 --> swap
scoreboard players operation @e[tag=pos,tag=calculated] deathswap.swap_calculated -= @s deathswap.swap_original

#tag add target for 0
execute if entity @s[tag=red_pos] run return run tag @e[tag=pos,scores={deathswap.swap_calculated=0}] add red_target
execute if entity @s[tag=blue_pos] run return run tag @e[tag=pos,scores={deathswap.swap_calculated=0}] add blue_target
execute if entity @s[tag=yellow_pos] run return run tag @e[tag=pos,scores={deathswap.swap_calculated=0}] add yellow_target
execute if entity @s[tag=green_pos] run return run tag @e[tag=pos,scores={deathswap.swap_calculated=0}] add green_target


