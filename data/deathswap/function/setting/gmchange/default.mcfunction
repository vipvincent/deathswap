#gmchange
scoreboard players set gmchange.survival_time deathswap.setting 60
scoreboard players set gmchange.creative_time deathswap.setting 5

function deathswap:ui/page/update

execute if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fGame Mode Auto Switch settings have been §dreset"}]
execute if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f遊戲模式自動切換設定已§d重設"}]

execute if score language deathswap.setting matches 1.. as @a at @s run playsound ui.button.click master @s ~ ~ ~