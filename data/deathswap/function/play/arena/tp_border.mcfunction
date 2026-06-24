#--------------------------------------------------
#Death Swap
#data/deathswap/function/play/arena/tp_border.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#collisionRule
function deathswap:team/collisionrule/never

gamerule minecraft:max_entity_cramming 0

#for spectator
tp @a[tag=spectator] @e[tag=lobby,limit=1]

#for error
tp @a[tag=player] @e[tag=lobby,limit=1]

#---
#solo
#tp
execute if score *mode deathswap.setting matches 0 at @e[tag=lobby] unless dimension minecraft:the_nether if score *arena.border deathswap.setting matches 1000 run spreadplayers ~ ~ 475 475 false @a[tag=player]
execute if score *mode deathswap.setting matches 0 at @e[tag=lobby] unless dimension minecraft:the_nether if score *arena.border deathswap.setting matches 900 run spreadplayers ~ ~ 425 425 false @a[tag=player]
execute if score *mode deathswap.setting matches 0 at @e[tag=lobby] unless dimension minecraft:the_nether if score *arena.border deathswap.setting matches 800 run spreadplayers ~ ~ 375 375 false @a[tag=player]
execute if score *mode deathswap.setting matches 0 at @e[tag=lobby] unless dimension minecraft:the_nether if score *arena.border deathswap.setting matches 700 run spreadplayers ~ ~ 325 325 false @a[tag=player]
execute if score *mode deathswap.setting matches 0 at @e[tag=lobby] unless dimension minecraft:the_nether if score *arena.border deathswap.setting matches 600 run spreadplayers ~ ~ 275 275 false @a[tag=player]
execute if score *mode deathswap.setting matches 0 at @e[tag=lobby] unless dimension minecraft:the_nether if score *arena.border deathswap.setting matches 500 run spreadplayers ~ ~ 225 225 false @a[tag=player]
execute if score *mode deathswap.setting matches 0 at @e[tag=lobby] unless dimension minecraft:the_nether if score *arena.border deathswap.setting matches 400 run spreadplayers ~ ~ 175 175 false @a[tag=player]
execute if score *mode deathswap.setting matches 0 at @e[tag=lobby] unless dimension minecraft:the_nether if score *arena.border deathswap.setting matches 300 run spreadplayers ~ ~ 125 125 false @a[tag=player]
execute if score *mode deathswap.setting matches 0 at @e[tag=lobby] unless dimension minecraft:the_nether if score *arena.border deathswap.setting matches 200 run spreadplayers ~ ~ 75 75 false @a[tag=player]
execute if score *mode deathswap.setting matches 0 at @e[tag=lobby] unless dimension minecraft:the_nether if score *arena.border deathswap.setting matches 100 run spreadplayers ~ ~ 40 40 false @a[tag=player]

#tp nether
execute if score *mode deathswap.setting matches 0 at @e[tag=lobby] if dimension minecraft:the_nether if score *arena.border deathswap.setting matches 1000 run spreadplayers ~ ~ 475 475 under 127 false @a[tag=player]
execute if score *mode deathswap.setting matches 0 at @e[tag=lobby] if dimension minecraft:the_nether if score *arena.border deathswap.setting matches 900 run spreadplayers ~ ~ 425 425 under 127 false @a[tag=player]
execute if score *mode deathswap.setting matches 0 at @e[tag=lobby] if dimension minecraft:the_nether if score *arena.border deathswap.setting matches 800 run spreadplayers ~ ~ 375 375 under 127 false @a[tag=player]
execute if score *mode deathswap.setting matches 0 at @e[tag=lobby] if dimension minecraft:the_nether if score *arena.border deathswap.setting matches 700 run spreadplayers ~ ~ 325 325 under 127 false @a[tag=player]
execute if score *mode deathswap.setting matches 0 at @e[tag=lobby] if dimension minecraft:the_nether if score *arena.border deathswap.setting matches 600 run spreadplayers ~ ~ 275 275 under 127 false @a[tag=player]
execute if score *mode deathswap.setting matches 0 at @e[tag=lobby] if dimension minecraft:the_nether if score *arena.border deathswap.setting matches 500 run spreadplayers ~ ~ 225 225 under 127 false @a[tag=player]
execute if score *mode deathswap.setting matches 0 at @e[tag=lobby] if dimension minecraft:the_nether if score *arena.border deathswap.setting matches 400 run spreadplayers ~ ~ 175 175 under 127 false @a[tag=player]
execute if score *mode deathswap.setting matches 0 at @e[tag=lobby] if dimension minecraft:the_nether if score *arena.border deathswap.setting matches 300 run spreadplayers ~ ~ 125 125 under 127 false @a[tag=player]
execute if score *mode deathswap.setting matches 0 at @e[tag=lobby] if dimension minecraft:the_nether if score *arena.border deathswap.setting matches 200 run spreadplayers ~ ~ 75 75 under 127 false @a[tag=player]
execute if score *mode deathswap.setting matches 0 at @e[tag=lobby] if dimension minecraft:the_nether if score *arena.border deathswap.setting matches 100 run spreadplayers ~ ~ 40 40 under 127 false @a[tag=player]

#---
#team
#tp
execute if score *mode deathswap.setting matches 1 at @e[tag=lobby] unless dimension minecraft:the_nether if score *arena.border deathswap.setting matches 1000 run spreadplayers ~ ~ 475 475 true @a[tag=player]
execute if score *mode deathswap.setting matches 1 at @e[tag=lobby] unless dimension minecraft:the_nether if score *arena.border deathswap.setting matches 900 run spreadplayers ~ ~ 425 425 true @a[tag=player]
execute if score *mode deathswap.setting matches 1 at @e[tag=lobby] unless dimension minecraft:the_nether if score *arena.border deathswap.setting matches 800 run spreadplayers ~ ~ 375 375 true @a[tag=player]
execute if score *mode deathswap.setting matches 1 at @e[tag=lobby] unless dimension minecraft:the_nether if score *arena.border deathswap.setting matches 700 run spreadplayers ~ ~ 325 325 true @a[tag=player]
execute if score *mode deathswap.setting matches 1 at @e[tag=lobby] unless dimension minecraft:the_nether if score *arena.border deathswap.setting matches 600 run spreadplayers ~ ~ 275 275 true @a[tag=player]
execute if score *mode deathswap.setting matches 1 at @e[tag=lobby] unless dimension minecraft:the_nether if score *arena.border deathswap.setting matches 500 run spreadplayers ~ ~ 225 225 true @a[tag=player]
execute if score *mode deathswap.setting matches 1 at @e[tag=lobby] unless dimension minecraft:the_nether if score *arena.border deathswap.setting matches 400 run spreadplayers ~ ~ 175 175 true @a[tag=player]
execute if score *mode deathswap.setting matches 1 at @e[tag=lobby] unless dimension minecraft:the_nether if score *arena.border deathswap.setting matches 300 run spreadplayers ~ ~ 125 125 true @a[tag=player]
execute if score *mode deathswap.setting matches 1 at @e[tag=lobby] unless dimension minecraft:the_nether if score *arena.border deathswap.setting matches 200 run spreadplayers ~ ~ 75 75 true @a[tag=player]
execute if score *mode deathswap.setting matches 1 at @e[tag=lobby] unless dimension minecraft:the_nether if score *arena.border deathswap.setting matches 100 run spreadplayers ~ ~ 40 40 true @a[tag=player]

#tp nether
execute if score *mode deathswap.setting matches 1 at @e[tag=lobby] if dimension minecraft:the_nether if score *arena.border deathswap.setting matches 1000 run spreadplayers ~ ~ 475 475 under 127 true @a[tag=player]
execute if score *mode deathswap.setting matches 1 at @e[tag=lobby] if dimension minecraft:the_nether if score *arena.border deathswap.setting matches 900 run spreadplayers ~ ~ 425 425 under 127 true @a[tag=player]
execute if score *mode deathswap.setting matches 1 at @e[tag=lobby] if dimension minecraft:the_nether if score *arena.border deathswap.setting matches 800 run spreadplayers ~ ~ 375 375 under 127 true @a[tag=player]
execute if score *mode deathswap.setting matches 1 at @e[tag=lobby] if dimension minecraft:the_nether if score *arena.border deathswap.setting matches 700 run spreadplayers ~ ~ 325 325 under 127 true @a[tag=player]
execute if score *mode deathswap.setting matches 1 at @e[tag=lobby] if dimension minecraft:the_nether if score *arena.border deathswap.setting matches 600 run spreadplayers ~ ~ 275 275 under 127 true @a[tag=player]
execute if score *mode deathswap.setting matches 1 at @e[tag=lobby] if dimension minecraft:the_nether if score *arena.border deathswap.setting matches 500 run spreadplayers ~ ~ 225 225 under 127 true @a[tag=player]
execute if score *mode deathswap.setting matches 1 at @e[tag=lobby] if dimension minecraft:the_nether if score *arena.border deathswap.setting matches 400 run spreadplayers ~ ~ 175 175 under 127 true @a[tag=player]
execute if score *mode deathswap.setting matches 1 at @e[tag=lobby] if dimension minecraft:the_nether if score *arena.border deathswap.setting matches 300 run spreadplayers ~ ~ 125 125 under 127 true @a[tag=player]
execute if score *mode deathswap.setting matches 1 at @e[tag=lobby] if dimension minecraft:the_nether if score *arena.border deathswap.setting matches 200 run spreadplayers ~ ~ 75 75 under 127 true @a[tag=player]
execute if score *mode deathswap.setting matches 1 at @e[tag=lobby] if dimension minecraft:the_nether if score *arena.border deathswap.setting matches 100 run spreadplayers ~ ~ 40 40 under 127 true @a[tag=player]


#border
execute at @e[tag=lobby] in minecraft:overworld run worldborder center ~ ~
execute at @e[tag=lobby] in minecraft:the_nether run worldborder center ~ ~
execute at @e[tag=lobby] in minecraft:the_end run worldborder center ~ ~
execute at @e[tag=lobby] if score *arena.border deathswap.setting matches 1000 in minecraft:overworld run worldborder set 1000
execute at @e[tag=lobby] if score *arena.border deathswap.setting matches 1000 in minecraft:the_nether run worldborder set 1000
execute at @e[tag=lobby] if score *arena.border deathswap.setting matches 1000 in minecraft:the_end run worldborder set 1000
execute at @e[tag=lobby] if score *arena.border deathswap.setting matches 900 in minecraft:overworld run worldborder set 900
execute at @e[tag=lobby] if score *arena.border deathswap.setting matches 900 in minecraft:the_nether run worldborder set 900
execute at @e[tag=lobby] if score *arena.border deathswap.setting matches 900 in minecraft:the_end run worldborder set 900
execute at @e[tag=lobby] if score *arena.border deathswap.setting matches 800 in minecraft:overworld run worldborder set 800
execute at @e[tag=lobby] if score *arena.border deathswap.setting matches 800 in minecraft:the_nether run worldborder set 800
execute at @e[tag=lobby] if score *arena.border deathswap.setting matches 800 in minecraft:the_end run worldborder set 800
execute at @e[tag=lobby] if score *arena.border deathswap.setting matches 700 in minecraft:overworld run worldborder set 700
execute at @e[tag=lobby] if score *arena.border deathswap.setting matches 700 in minecraft:the_nether run worldborder set 700
execute at @e[tag=lobby] if score *arena.border deathswap.setting matches 700 in minecraft:the_end run worldborder set 700
execute at @e[tag=lobby] if score *arena.border deathswap.setting matches 600 in minecraft:overworld run worldborder set 600
execute at @e[tag=lobby] if score *arena.border deathswap.setting matches 600 in minecraft:the_nether run worldborder set 600
execute at @e[tag=lobby] if score *arena.border deathswap.setting matches 600 in minecraft:the_end run worldborder set 600
execute at @e[tag=lobby] if score *arena.border deathswap.setting matches 500 in minecraft:overworld run worldborder set 500
execute at @e[tag=lobby] if score *arena.border deathswap.setting matches 500 in minecraft:the_nether run worldborder set 500
execute at @e[tag=lobby] if score *arena.border deathswap.setting matches 500 in minecraft:the_end run worldborder set 500
execute at @e[tag=lobby] if score *arena.border deathswap.setting matches 400 in minecraft:overworld run worldborder set 400
execute at @e[tag=lobby] if score *arena.border deathswap.setting matches 400 in minecraft:the_nether run worldborder set 400
execute at @e[tag=lobby] if score *arena.border deathswap.setting matches 400 in minecraft:the_end run worldborder set 400
execute at @e[tag=lobby] if score *arena.border deathswap.setting matches 300 in minecraft:overworld run worldborder set 300
execute at @e[tag=lobby] if score *arena.border deathswap.setting matches 300 in minecraft:the_nether run worldborder set 300
execute at @e[tag=lobby] if score *arena.border deathswap.setting matches 300 in minecraft:the_end run worldborder set 300
execute at @e[tag=lobby] if score *arena.border deathswap.setting matches 200 in minecraft:overworld run worldborder set 200
execute at @e[tag=lobby] if score *arena.border deathswap.setting matches 200 in minecraft:the_nether run worldborder set 200
execute at @e[tag=lobby] if score *arena.border deathswap.setting matches 200 in minecraft:the_end run worldborder set 200
execute at @e[tag=lobby] if score *arena.border deathswap.setting matches 100 in minecraft:overworld run worldborder set 100
execute at @e[tag=lobby] if score *arena.border deathswap.setting matches 100 in minecraft:the_nether run worldborder set 100
execute at @e[tag=lobby] if score *arena.border deathswap.setting matches 100 in minecraft:the_end run worldborder set 100