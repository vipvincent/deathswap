#install
execute unless data storage deathswap:status {install:1b} run return run tellraw @a ["","§6§lTip: ",{"text": "§f[Click here to install Death Swap 點擊此處安裝死亡交換]","clickEvent": {"action": "run_command","value": "/function deathswap:install"},"hoverEvent": {"action": "show_text","contents": "§eClick here or type command 點此或輸入以下指令\n§d/function deathswap:install §c[OP players OP 玩家]"}}]


#language
execute unless score language deathswap.setting matches 1.. as @a[scores={deathswap.join_game=1}] run return run function deathswap:ui/language

#update reinstall
execute unless data storage deathswap:status {version:"v3.0"} if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§eFound a new version and will reinstall it soon"}]
execute unless data storage deathswap:status {version:"v3.0"} if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§e找到新版本，即將重新安裝"}]
execute unless data storage deathswap:status {version:"v3.0"} run return run function deathswap:reinstall

#ui
execute if score game deathswap.status matches 0 run scoreboard players set @a[tag=admin] deathswap.ui_page 0
execute if score game deathswap.status matches 0 run function deathswap:ui/page/update