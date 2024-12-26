scoreboard players set language deathswap.setting 2

tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f語言已設定為§b中文"}]
execute as @a at @s run playsound ui.button.click master @s ~ ~ ~

function deathswap:ui/page/update

execute if data storage deathswap:status {install_stage:1b} run function deathswap:install