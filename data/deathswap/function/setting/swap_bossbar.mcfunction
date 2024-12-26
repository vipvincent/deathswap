scoreboard players add swap_bossbar deathswap.setting 1
execute if score swap_bossbar deathswap.setting matches 2 run scoreboard players set swap_bossbar deathswap.setting 0

#en
execute if score language deathswap.setting matches 1 if score swap_bossbar deathswap.setting matches 0 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fSwap countdown progress bar is set §cSpectators"}]
execute if score language deathswap.setting matches 1 if score swap_bossbar deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fSwap countdown progress bar is set §aEveryone"}]

#中文
execute if score language deathswap.setting matches 2 if score swap_bossbar deathswap.setting matches 0 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f交換倒數進度條設定為§c僅旁觀/淘汰者可見"}]
execute if score language deathswap.setting matches 2 if score swap_bossbar deathswap.setting matches 1 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f交換倒數進度條設定為§a所有人可見"}]

execute as @a at @s run playsound ui.button.click master @s ~ ~ ~

function deathswap:ui/page/update
