#killer
scoreboard players set killer.quantity deathswap.setting 0
scoreboard players set killer.identity deathswap.setting 0
scoreboard players set killer.weapon deathswap.setting 0

function deathswap:ui/page/update

execute if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fKiller Mode settings have been §dreset"}]
execute if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f殺手模式設定已§d重設"}]

execute if score language deathswap.setting matches 1.. as @a at @s run playsound ui.button.click master @s ~ ~ ~