scoreboard players add swap_warn deathswap.setting 5
execute if score swap_warn deathswap.setting matches 15.. run scoreboard players set swap_warn deathswap.setting 0

#en
execute if score language deathswap.setting matches 1 if score swap_warn deathswap.setting matches 0 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fSwap warn is §cDisable"}]
execute if score language deathswap.setting matches 1 if score swap_warn deathswap.setting matches 5 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fSwap warn is set §a5s"}]
execute if score language deathswap.setting matches 1 if score swap_warn deathswap.setting matches 10 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fSwap warn is set §a10s"}]

#中文
execute if score language deathswap.setting matches 2 if score swap_warn deathswap.setting matches 0 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f交換警告已§c關閉"}]
execute if score language deathswap.setting matches 2 if score swap_warn deathswap.setting matches 5 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f交換警告已設定為§a5秒"}]
execute if score language deathswap.setting matches 2 if score swap_warn deathswap.setting matches 10 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f交換警告已設定為§a10秒"}]

execute as @a at @s run playsound ui.button.click master @s ~ ~ ~

function deathswap:ui/page/update
