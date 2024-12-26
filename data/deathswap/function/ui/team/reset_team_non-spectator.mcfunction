team empty red
team empty blue
team empty yellow
team empty green

execute if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§f§7Non-spectator §fplayer §cremoved from team"}]
execute if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f已將§7旁觀者以外§f的玩家§c移出隊伍"}]

execute as @a at @s run playsound ui.button.click master @s ~ ~ ~