#collisionRule
team modify red collisionRule never
team modify blue collisionRule never
team modify yellow collisionRule never
team modify green collisionRule never

gamerule maxEntityCramming 0


execute if score arena deathswap.setting matches 1 if score arena.start deathswap.setting matches 0 run return run function deathswap:play/arena/tp_border
execute if score start_pos deathswap.setting matches 1 run return run tp @a[tag=player] @e[type=marker,tag=lobby,limit=1]

execute at @e[type=marker,tag=lobby] unless dimension minecraft:the_nether run spreadplayers 0 0 2000 100000 true @a[tag=player]
execute at @e[type=marker,tag=lobby] if dimension minecraft:the_nether run spreadplayers 0 0 2000 100000 under 127 true @a[tag=player]
