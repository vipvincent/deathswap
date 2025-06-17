scoreboard players add random_effect deathswap.setting 1
execute if score random_effect deathswap.setting matches 2 run scoreboard players set random_effect deathswap.setting 0

#en
execute if score language deathswap.setting matches 1 if score random_effect deathswap.setting matches 0 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fRandom Effect is set §cDisable"}]
execute if score language deathswap.setting matches 1 if score random_effect deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fRandom Effect is set §aEnabled"}]

#中文
execute if score language deathswap.setting matches 2 if score random_effect deathswap.setting matches 0 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f隨機效果已§c關閉"}]
execute if score language deathswap.setting matches 2 if score random_effect deathswap.setting matches 1 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f隨機效果已§a開啟"}]

execute as @a at @s run playsound ui.button.click master @s ~ ~ ~

function deathswap:ui/page/update