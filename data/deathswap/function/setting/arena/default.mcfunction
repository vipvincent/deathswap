#gmchange
scoreboard players set arena.start deathswap.setting 10
scoreboard players set arena.border deathswap.setting 500
scoreboard players set arena.shrink deathswap.setting 0

function deathswap:ui/page/update

execute if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fArena settings have been §dreset"}]
execute if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f競技場設定已§d重設"}]

execute if score language deathswap.setting matches 1.. as @a at @s run playsound ui.button.click master @s ~ ~ ~