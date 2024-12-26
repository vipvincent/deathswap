execute if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§eThe yellow team is completely wiped out!"}]
execute if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§e黃隊全滅！"}]

scoreboard players set team_yellow deathswap.status 0