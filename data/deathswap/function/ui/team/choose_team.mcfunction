scoreboard players add team_choose deathswap.setting 1
execute if score team_choose deathswap.setting matches 2 run scoreboard players set team_choose deathswap.setting 0

execute if score language deathswap.setting matches 1 if score team_choose deathswap.setting matches 0 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fTeam selection permission is §cDisable"}]
execute if score language deathswap.setting matches 1 if score team_choose deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fTeam selection permission is §aEnabled"}]

execute if score language deathswap.setting matches 2 if score team_choose deathswap.setting matches 0 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f選隊權限已§c關閉"}]
execute if score language deathswap.setting matches 2 if score team_choose deathswap.setting matches 1 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f選隊權限已§a開啟"}]

execute as @a at @s run playsound ui.button.click master @s ~ ~ ~

function deathswap:ui/page/update