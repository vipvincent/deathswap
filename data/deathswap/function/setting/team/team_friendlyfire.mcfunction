scoreboard players add team_friendlyfire deathswap.setting 1
execute if score team_friendlyfire deathswap.setting matches 2 run scoreboard players set team_friendlyfire deathswap.setting 0

#en
execute if score language deathswap.setting matches 1 if score team_friendlyfire deathswap.setting matches 0 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fSame team friendly fire is §aEnabled"}]
execute if score language deathswap.setting matches 1 if score team_friendlyfire deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fSame team friendly fire is §cDisable"}]

#中文
execute if score language deathswap.setting matches 2 if score team_friendlyfire deathswap.setting matches 0 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f同隊互傷已§a開啟"}]
execute if score language deathswap.setting matches 2 if score team_friendlyfire deathswap.setting matches 1 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f同隊互傷已§c關閉"}]

execute as @a at @s run playsound ui.button.click master @s ~ ~ ~

function deathswap:ui/page/update
