scoreboard players set arena.shrink deathswap.status 1 
scoreboard players set arena deathswap.timer 0

#100..
execute if score arena.border deathswap.status matches 25 run worldborder set 25 30
execute if score arena.border deathswap.status matches 50 run worldborder set 50 30
execute if score arena.border deathswap.status matches 100.. run worldborder add -100 30


#text
execute if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fThe arena is now starting shrink to "},[{"score": {"name": "arena.border","objective": "deathswap.status"},"color":"gold"},{"text": "x"},{"score": {"name": "arena.border","objective": "deathswap.status"}}]]
execute if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f競技場現在開始縮圈至"},[{"score": {"name": "arena.border","objective": "deathswap.status"},"color":"gold"},{"text": "x"},{"score": {"name": "arena.border","objective": "deathswap.status"}}]]
