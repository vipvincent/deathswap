#killer
scoreboard players set random_effect.time deathswap.setting 60

function deathswap:ui/page/update

execute if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fRandom Effect settings have been §dreset"}]
execute if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f隨機效果設定已§d重設"}]

execute if score language deathswap.setting matches 1.. as @a at @s run playsound ui.button.click master @s ~ ~ ~