execute if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§9The blue team is completely wiped out!"}]
execute if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§9藍隊全滅！"}]

scoreboard players set team_blue deathswap.status 0