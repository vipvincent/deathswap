scoreboard players add arena.shrink deathswap.setting 1
execute if score arena.shrink deathswap.setting matches 2 run scoreboard players set arena.shrink deathswap.setting 0

#en
execute if score language deathswap.setting matches 1 if score arena.shrink deathswap.setting matches 0 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fArena shrinks is set §aEnabled"}]
execute if score language deathswap.setting matches 1 if score arena.shrink deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fArena shrinks is set §cDisable"}]

#中文
execute if score language deathswap.setting matches 2 if score arena.shrink deathswap.setting matches 0 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f競技場縮圈已§a開啟"}]
execute if score language deathswap.setting matches 2 if score arena.shrink deathswap.setting matches 1 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f競技場縮圈已§c關閉"}]

execute as @a at @s run playsound ui.button.click master @s ~ ~ ~

function deathswap:ui/page/update