execute unless data storage deathswap:status {install:1b} run tellraw @s [{"text": "§cDeath swap is not installed yet! 尚未安裝死亡交換！"},{"text": "§f[Install 安裝]","clickEvent": {"action": "run_command","value": "/function deathswap:install"},"hoverEvent": {"action": "show_text","contents": "⚠ Only for OP players\n/function deathswap:install"}}]
execute unless data storage deathswap:status {install:1b} as @s at @s run playsound entity.villager.no master @s ~ ~ ~
execute unless data storage deathswap:status {install:1b} run return fail

tellraw @a {"text": "---------------------------------------------------"}
execute unless score language deathswap.setting matches 2.. run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fReinstalling §6Death Swap§f..."}]
execute if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f正在重新安裝§6死亡交換§f..."}]

data modify storage deathswap:status reinstall set value 1b
execute if score language deathswap.setting matches 1 run data modify storage deathswap:status reinstall_lang set value 1b
execute if score language deathswap.setting matches 2 run data modify storage deathswap:status reinstall_lang set value 2b

function deathswap:uninstall
function deathswap:install
#reture here
#= ui/lanugage
execute if data storage deathswap:status {reinstall_lang:1b} run scoreboard players set language deathswap.setting 1
execute if data storage deathswap:status {reinstall_lang:2b} run scoreboard players set language deathswap.setting 2
#clear reinstall
data remove storage deathswap:status reinstall_lang
data remove storage deathswap:status reinstall
#install_stage
execute if score language deathswap.setting matches 1.. run function deathswap:install
execute unless score language deathswap.setting matches 1.. run function deathswap:ui/language