scoreboard players add glowing deathswap.setting 1
execute if score glowing deathswap.setting matches 2 run scoreboard players set glowing deathswap.setting 0

#en
execute if score language deathswap.setting matches 1 if score glowing deathswap.setting matches 0 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fGlowing effect is §cDisable"}]
execute if score language deathswap.setting matches 1 if score glowing deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fGlowing effect is §aEnabled"}]

#中文
execute if score language deathswap.setting matches 2 if score glowing deathswap.setting matches 0 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f發光效果已§c關閉"}]
execute if score language deathswap.setting matches 2 if score glowing deathswap.setting matches 1 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f發光效果已§a開啟"}]

execute as @a at @s run playsound ui.button.click master @s ~ ~ ~

function deathswap:ui/page/update
