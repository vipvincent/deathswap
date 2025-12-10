#all_join_solo
team join solo @a[team=!spectator]

execute if score *language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fAdd all §7non-spectator §fplayers to §2Game Team"}]
execute if score *language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f已將§7旁觀者以外§f的所有玩家加入§2遊戲隊伍"}]

execute as @a at @s run playsound ui.button.click master @s ~ ~ ~

function deathswap:ui/page/update