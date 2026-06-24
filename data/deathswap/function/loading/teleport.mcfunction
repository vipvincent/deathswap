#--------------------------------------------------
#Death Swap
#data/deathswap/function/loading/teleport.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#collisionRule
function deathswap:team/collisionrule/never

gamerule minecraft:max_entity_cramming 0

#---
#arena
execute if score *arena deathswap.setting matches 1 if score *arena.start deathswap.setting matches 0 run return run function deathswap:play/arena/tp_border

#tp to lobby
execute if score *start_pos deathswap.setting matches 1 run return run tp @a[tag=player] @e[tag=lobby,limit=1]

##spreadplayers
#solo battle
execute if score *mode deathswap.setting matches 0 at @e[tag=lobby] unless dimension minecraft:the_nether run spreadplayers 0 0 2000 100000 false @a[tag=player]
execute if score *mode deathswap.setting matches 0 at @e[tag=lobby] if dimension minecraft:the_nether run spreadplayers 0 0 2000 100000 under 127 false @a[tag=player]

#team battle
execute if score *mode deathswap.setting matches 1 at @e[tag=lobby] unless dimension minecraft:the_nether run spreadplayers 0 0 2000 100000 true @a[tag=player]
execute if score *mode deathswap.setting matches 1 at @e[tag=lobby] if dimension minecraft:the_nether run spreadplayers 0 0 2000 100000 under 127 true @a[tag=player]
