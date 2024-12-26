scoreboard players add hp_natural deathswap.setting 1
execute if score hp_natural deathswap.setting matches 2 run scoreboard players set hp_natural deathswap.setting 0

#中文
execute if score language deathswap.setting matches 1 if score hp_natural deathswap.setting matches 0 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fNatural regeneration is §aEnabled"}]
execute if score language deathswap.setting matches 1 if score hp_natural deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fNatural regeneration is §cDisable"}]

#中文
execute if score language deathswap.setting matches 2 if score hp_natural deathswap.setting matches 0 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f自然回血已§a開啟"}]
execute if score language deathswap.setting matches 2 if score hp_natural deathswap.setting matches 1 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f自然回血已§c關閉"}]

execute as @a at @s run playsound ui.button.click master @s ~ ~ ~

function deathswap:ui/page/update
