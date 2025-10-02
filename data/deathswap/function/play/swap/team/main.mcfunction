#swap/team/main

#pos
execute as @a[team=red,tag=player,sort=random,limit=1] at @s run function deathswap:play/swap/team/pos/red
execute as @a[team=blue,tag=player,sort=random,limit=1] at @s run function deathswap:play/swap/team/pos/blue
execute as @a[team=yellow,tag=player,sort=random,limit=1] at @s run function deathswap:play/swap/team/pos/yellow
execute as @a[team=green,tag=player,sort=random,limit=1] at @s run function deathswap:play/swap/team/pos/green

#assign_id
execute as @e[type=marker,tag=pos,sort=random] run function deathswap:play/swap/assign_id

# calculated = original
# calculated -1
# calculated = 0 --> count 
# calculated - original = 0 --> swap
# Example:
# original   1 2 3 4
# calculated 2 3 4 5 (1-1=0 --> 5)

#tp
execute as @e[type=marker,tag=pos] run function deathswap:play/swap/team/tp
