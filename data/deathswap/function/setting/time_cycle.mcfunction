scoreboard players add time_cycle deathswap.setting 1
execute if score time_cycle deathswap.setting matches 2 run scoreboard players set time_cycle deathswap.setting 0

#en
execute if score language deathswap.setting matches 1 if score time_cycle deathswap.setting matches 0 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fDay/night cycle is §aEnabled"}]
execute if score language deathswap.setting matches 1 if score time_cycle deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fDay/night cycle is §cDisable"}]

#中文
execute if score language deathswap.setting matches 2 if score time_cycle deathswap.setting matches 0 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f日夜交替已§a開啟"}]
execute if score language deathswap.setting matches 2 if score time_cycle deathswap.setting matches 1 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f日夜交替已§c關閉"}]

execute as @a at @s run playsound ui.button.click master @s ~ ~ ~

function deathswap:ui/page/update
