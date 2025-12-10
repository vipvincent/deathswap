scoreboard players add *swap_invincible deathswap.setting 1
execute if score *swap_invincible deathswap.setting matches 2 run scoreboard players set *swap_invincible deathswap.setting 3
execute if score *swap_invincible deathswap.setting matches 4 run scoreboard players set *swap_invincible deathswap.setting 5
execute if score *swap_invincible deathswap.setting matches 6 run scoreboard players set *swap_invincible deathswap.setting 0

#en
execute if score *language deathswap.setting matches 1 if score *swap_invincible deathswap.setting matches 0 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fSwap Invincibility is §cDisable"}]
execute if score *language deathswap.setting matches 1 if score *swap_invincible deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fSwap Invincibility is set §a1s"}]
execute if score *language deathswap.setting matches 1 if score *swap_invincible deathswap.setting matches 3 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fSwap Invincibility is set §a3s"}]
execute if score *language deathswap.setting matches 1 if score *swap_invincible deathswap.setting matches 5 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fSwap Invincibility is set §a5s"}]

#中文
execute if score *language deathswap.setting matches 2 if score *swap_invincible deathswap.setting matches 0 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f交換無敵已§c關閉"}]
execute if score *language deathswap.setting matches 2 if score *swap_invincible deathswap.setting matches 1 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f交換無敵已設定為§a1秒"}]
execute if score *language deathswap.setting matches 2 if score *swap_invincible deathswap.setting matches 3 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f交換無敵已設定為§a3秒"}]
execute if score *language deathswap.setting matches 2 if score *swap_invincible deathswap.setting matches 5 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f交換無敵已設定為§a5秒"}]

execute as @a at @s run playsound ui.button.click master @s ~ ~ ~

function deathswap:ui/page/update
