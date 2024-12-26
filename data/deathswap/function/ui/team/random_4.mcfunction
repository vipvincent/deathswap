team join red @r[team=]
team join blue @r[team=]
team join yellow @r[team=]
team join green @r[team=]

execute unless entity @a[team=] if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fRandomly divided into §6four teams §fto complete"}]
execute unless entity @a[team=] if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f隨機分§6四隊§f完成"}]

execute if entity @a[team=] run function deathswap:ui/team/random_4