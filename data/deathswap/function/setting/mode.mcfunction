#team/mode

# 1 solo battle
# 2 team battle

scoreboard players add mode deathswap.setting 1
execute if score mode deathswap.setting matches 3 run scoreboard players set mode deathswap.setting 1

execute if score language deathswap.setting matches 1 if score mode deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fSwitched to §eSolo Battle"}]
execute if score language deathswap.setting matches 1 if score mode deathswap.setting matches 2 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fSwitched to §eTeam Battle"}]

execute if score language deathswap.setting matches 2 if score mode deathswap.setting matches 1 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f已切換為§e個人戰"}]
execute if score language deathswap.setting matches 2 if score mode deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f已切換為§e隊伍戰"}]

execute as @a at @s run playsound ui.button.click master @s ~ ~ ~

function deathswap:ui/page/update
function deathswap:ui/team/reset_team_non-spectator
