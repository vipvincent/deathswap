scoreboard players add gmchange deathswap.setting 1
execute if score gmchange deathswap.setting matches 2 run scoreboard players set gmchange deathswap.setting 0

#en
execute if score language deathswap.setting matches 1 if score gmchange deathswap.setting matches 0 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fGame Mode Auto Switch is set §cDisable"}]
execute if score language deathswap.setting matches 1 if score gmchange deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fGame Mode Auto Switch is set §aEnabled"}]

#中文
execute if score language deathswap.setting matches 2 if score gmchange deathswap.setting matches 0 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f遊戲模式自動切換已§c關閉"}]
execute if score language deathswap.setting matches 2 if score gmchange deathswap.setting matches 1 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f遊戲模式自動切換已§a開啟"}]

execute as @a at @s run playsound ui.button.click master @s ~ ~ ~

function deathswap:ui/page/update