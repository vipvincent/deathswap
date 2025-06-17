scoreboard players add swap_time deathswap.setting 1
execute if score swap_time deathswap.setting matches 10 run scoreboard players set swap_time deathswap.setting 0

#en
execute if score language deathswap.setting matches 1 if score swap_time deathswap.setting matches 0 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fSwap time has been set to §aRandom 30s-1min"}]
execute if score language deathswap.setting matches 1 if score swap_time deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fSwap time has been set to §aRandom 30s-2min"}]
execute if score language deathswap.setting matches 1 if score swap_time deathswap.setting matches 2 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fSwap time has been set to §aRandom 30s-3min"}]
execute if score language deathswap.setting matches 1 if score swap_time deathswap.setting matches 3 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fSwap time has been set to §aRandom 30s-4min"}]
execute if score language deathswap.setting matches 1 if score swap_time deathswap.setting matches 4 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fSwap time has been set to §aRandom 30s-5min"}]
execute if score language deathswap.setting matches 1 if score swap_time deathswap.setting matches 5 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fSwap time has been set to §cFixed 1min"}]
execute if score language deathswap.setting matches 1 if score swap_time deathswap.setting matches 6 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fSwap time has been set to §cFixed 2min"}]
execute if score language deathswap.setting matches 1 if score swap_time deathswap.setting matches 7 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fSwap time has been set to §cFixed 3min"}]
execute if score language deathswap.setting matches 1 if score swap_time deathswap.setting matches 8 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fSwap time has been set to §cFixed 4min"}]
execute if score language deathswap.setting matches 1 if score swap_time deathswap.setting matches 9 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fSwap time has been set to §cFixed 5min"}]
#中文
execute if score language deathswap.setting matches 2 if score swap_time deathswap.setting matches 0 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f交換時間已設定為§a隨機30秒-1分鐘"}]
execute if score language deathswap.setting matches 2 if score swap_time deathswap.setting matches 1 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f交換時間已設定為§a隨機30秒-2分鐘"}]
execute if score language deathswap.setting matches 2 if score swap_time deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f交換時間已設定為§a隨機30秒-3分鐘"}]
execute if score language deathswap.setting matches 2 if score swap_time deathswap.setting matches 3 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f交換時間已設定為§a隨機30秒-4分鐘"}]
execute if score language deathswap.setting matches 2 if score swap_time deathswap.setting matches 4 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f交換時間已設定為§a隨機30秒-5分鐘"}]
execute if score language deathswap.setting matches 2 if score swap_time deathswap.setting matches 5 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f交換時間已設定為§c固定1分鐘"}]
execute if score language deathswap.setting matches 2 if score swap_time deathswap.setting matches 6 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f交換時間已設定為§c固定2分鐘"}]
execute if score language deathswap.setting matches 2 if score swap_time deathswap.setting matches 7 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f交換時間已設定為§c固定3分鐘"}]
execute if score language deathswap.setting matches 2 if score swap_time deathswap.setting matches 8 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f交換時間已設定為§c固定4分鐘"}]
execute if score language deathswap.setting matches 2 if score swap_time deathswap.setting matches 9 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f交換時間已設定為§c固定5分鐘"}]

execute as @a at @s run playsound ui.button.click master @s ~ ~ ~

function deathswap:ui/page/update
