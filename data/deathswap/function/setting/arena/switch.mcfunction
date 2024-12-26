scoreboard players add arena deathswap.setting 1
execute if score arena deathswap.setting matches 2 run scoreboard players set arena deathswap.setting 0

#en
execute if score language deathswap.setting matches 1 if score arena deathswap.setting matches 0 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fArena is set §cDisable"}]
execute if score language deathswap.setting matches 1 if score arena deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fArena is set §aEnabled"}]

#中文
execute if score language deathswap.setting matches 2 if score arena deathswap.setting matches 0 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f競技場已§c關閉"}]
execute if score language deathswap.setting matches 2 if score arena deathswap.setting matches 1 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f競技場已§a開啟"}]

execute as @a at @s run playsound ui.button.click master @s ~ ~ ~

function deathswap:ui/page/update