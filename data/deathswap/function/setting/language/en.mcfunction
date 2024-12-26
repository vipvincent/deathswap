scoreboard players set language deathswap.setting 1

tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fLanguage is set to §cEnglish"}]
execute as @a at @s run playsound ui.button.click master @s ~ ~ ~

function deathswap:ui/page/update

execute if data storage deathswap:status {install_stage:1b} run function deathswap:install