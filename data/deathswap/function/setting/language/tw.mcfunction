#language/tw
scoreboard players set *language deathswap.setting 2

#text
tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f語言已設定為§b繁體中文"}]
execute as @a at @s run playsound ui.button.click master @s ~ ~ ~

#page update
function deathswap:ui/page/update

#adv 
function deathswap:advancement/update

#install_stage
execute if data storage deathswap:storage_main {install_stage:1b} run function deathswap:install