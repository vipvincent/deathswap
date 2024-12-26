#collisionRule
team modify red collisionRule never
team modify blue collisionRule never
team modify yellow collisionRule never
team modify green collisionRule never

gamerule maxEntityCramming 0

tp @a[tag=player] @e[type=marker,tag=lobby,limit=1]
#tp
execute at @e[type=marker,tag=lobby] unless dimension minecraft:the_nether if score arena.border deathswap.setting matches 1000 run spreadplayers ~ ~ 475 475 true @a[tag=player]
execute at @e[type=marker,tag=lobby] unless dimension minecraft:the_nether if score arena.border deathswap.setting matches 900 run spreadplayers ~ ~ 425 425 true @a[tag=player]
execute at @e[type=marker,tag=lobby] unless dimension minecraft:the_nether if score arena.border deathswap.setting matches 800 run spreadplayers ~ ~ 375 375 true @a[tag=player]
execute at @e[type=marker,tag=lobby] unless dimension minecraft:the_nether if score arena.border deathswap.setting matches 700 run spreadplayers ~ ~ 325 325 true @a[tag=player]
execute at @e[type=marker,tag=lobby] unless dimension minecraft:the_nether if score arena.border deathswap.setting matches 600 run spreadplayers ~ ~ 275 275 true @a[tag=player]
execute at @e[type=marker,tag=lobby] unless dimension minecraft:the_nether if score arena.border deathswap.setting matches 500 run spreadplayers ~ ~ 225 225 true @a[tag=player]
execute at @e[type=marker,tag=lobby] unless dimension minecraft:the_nether if score arena.border deathswap.setting matches 400 run spreadplayers ~ ~ 175 175 true @a[tag=player]
execute at @e[type=marker,tag=lobby] unless dimension minecraft:the_nether if score arena.border deathswap.setting matches 300 run spreadplayers ~ ~ 125 125 true @a[tag=player]
execute at @e[type=marker,tag=lobby] unless dimension minecraft:the_nether if score arena.border deathswap.setting matches 200 run spreadplayers ~ ~ 75 75 true @a[tag=player]
execute at @e[type=marker,tag=lobby] unless dimension minecraft:the_nether if score arena.border deathswap.setting matches 100 run spreadplayers ~ ~ 40 40 true @a[tag=player]

#tp nether
execute at @e[type=marker,tag=lobby] if dimension minecraft:the_nether if score arena.border deathswap.setting matches 1000 run spreadplayers ~ ~ 475 475 under 127 true @a[tag=player]
execute at @e[type=marker,tag=lobby] if dimension minecraft:the_nether if score arena.border deathswap.setting matches 900 run spreadplayers ~ ~ 425 425 under 127 true @a[tag=player]
execute at @e[type=marker,tag=lobby] if dimension minecraft:the_nether if score arena.border deathswap.setting matches 800 run spreadplayers ~ ~ 375 375 under 127 true @a[tag=player]
execute at @e[type=marker,tag=lobby] if dimension minecraft:the_nether if score arena.border deathswap.setting matches 700 run spreadplayers ~ ~ 325 325 under 127 true @a[tag=player]
execute at @e[type=marker,tag=lobby] if dimension minecraft:the_nether if score arena.border deathswap.setting matches 600 run spreadplayers ~ ~ 275 275 under 127 true @a[tag=player]
execute at @e[type=marker,tag=lobby] if dimension minecraft:the_nether if score arena.border deathswap.setting matches 500 run spreadplayers ~ ~ 225 225 under 127 true @a[tag=player]
execute at @e[type=marker,tag=lobby] if dimension minecraft:the_nether if score arena.border deathswap.setting matches 400 run spreadplayers ~ ~ 175 175 under 127 true @a[tag=player]
execute at @e[type=marker,tag=lobby] if dimension minecraft:the_nether if score arena.border deathswap.setting matches 300 run spreadplayers ~ ~ 125 125 under 127 true @a[tag=player]
execute at @e[type=marker,tag=lobby] if dimension minecraft:the_nether if score arena.border deathswap.setting matches 200 run spreadplayers ~ ~ 75 75 under 127 true @a[tag=player]
execute at @e[type=marker,tag=lobby] if dimension minecraft:the_nether if score arena.border deathswap.setting matches 100 run spreadplayers ~ ~ 40 40 under 127 true @a[tag=player]

#border
execute at @e[type=marker,tag=lobby] in minecraft:overworld run worldborder center ~ ~
execute at @e[type=marker,tag=lobby] if score arena.border deathswap.setting matches 1000 run worldborder set 1000
execute at @e[type=marker,tag=lobby] if score arena.border deathswap.setting matches 900 run worldborder set 900
execute at @e[type=marker,tag=lobby] if score arena.border deathswap.setting matches 800 run worldborder set 800
execute at @e[type=marker,tag=lobby] if score arena.border deathswap.setting matches 700 run worldborder set 700
execute at @e[type=marker,tag=lobby] if score arena.border deathswap.setting matches 600 run worldborder set 600
execute at @e[type=marker,tag=lobby] if score arena.border deathswap.setting matches 500 run worldborder set 500
execute at @e[type=marker,tag=lobby] if score arena.border deathswap.setting matches 400 run worldborder set 400
execute at @e[type=marker,tag=lobby] if score arena.border deathswap.setting matches 300 run worldborder set 300
execute at @e[type=marker,tag=lobby] if score arena.border deathswap.setting matches 200 run worldborder set 200
execute at @e[type=marker,tag=lobby] if score arena.border deathswap.setting matches 100 run worldborder set 100