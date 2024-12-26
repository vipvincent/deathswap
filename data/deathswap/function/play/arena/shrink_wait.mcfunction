
#end
execute if score arena.shrink deathswap.status matches 1 if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fThe arena has been reduced to "},[{"score": {"name": "arena.border","objective": "deathswap.status"},"color":"gold"},{"text": "x"},{"score": {"name": "arena.border","objective": "deathswap.status"}}]]
execute if score arena.shrink deathswap.status matches 1 if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f競技場完成縮圈至"},[{"score": {"name": "arena.border","objective": "deathswap.status"},"color":"gold"},{"text": "x"},{"score": {"name": "arena.border","objective": "deathswap.status"}}]]

execute if score arena.border deathswap.status matches ..25 run return run function deathswap:play/arena/shrink_end

scoreboard players set arena.shrink deathswap.status 0 
scoreboard players set arena deathswap.timer 30
bossbar set deathswap:arena max 30

#next
execute if score arena.border deathswap.status matches ..50 run scoreboard players set arena.border deathswap.status 25
execute if score arena.border deathswap.status matches 51..100 run scoreboard players set arena.border deathswap.status 50
execute if score arena.border deathswap.status matches 101.. run scoreboard players remove arena.border deathswap.status 100

#text
execute if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fAfter 30 seconds,"}]
execute if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fthe arena will begin to shrink to "},[{"score": {"name": "arena.border","objective": "deathswap.status"},"color":"gold"},{"text": "x"},{"score": {"name": "arena.border","objective": "deathswap.status"}}]]
execute if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f30秒後，競技場將會開始縮圈至"},[{"score": {"name": "arena.border","objective": "deathswap.status"},"color":"gold"},{"text": "x"},{"score": {"name": "arena.border","objective": "deathswap.status"}}]]
