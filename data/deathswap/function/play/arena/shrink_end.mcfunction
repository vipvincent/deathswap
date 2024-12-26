scoreboard players set arena.shrink deathswap.status 2
execute if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fNow the remaining players will glow!"}]
execute if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f現在剩餘的玩家將會發光！"}]