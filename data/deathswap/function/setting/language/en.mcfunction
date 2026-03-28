#language/en
scoreboard players set *language deathswap.setting 1

#text
tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fLanguage is set to §cEnglish"}]
execute as @a at @s run playsound ui.button.click master @s ~ ~ ~

#page update
function deathswap:ui/page/update

#adv 
function deathswap:advancement/update

#install_stage
execute if data storage deathswap:storage_main {install_stage:1b} run function deathswap:install