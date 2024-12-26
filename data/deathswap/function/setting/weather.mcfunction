scoreboard players add weather deathswap.setting 1
execute if score weather deathswap.setting matches 3 run scoreboard players set weather deathswap.setting 0

execute if score weather deathswap.setting matches 0 run weather clear
execute if score weather deathswap.setting matches 1 run weather rain
execute if score weather deathswap.setting matches 2 run weather thunder

#en
execute if score language deathswap.setting matches 1 if score weather deathswap.setting matches 0 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fWeather has been changed to §bClear"}]
execute if score language deathswap.setting matches 1 if score weather deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fWeather has been changed to §3Rain"}]
execute if score language deathswap.setting matches 1 if score weather deathswap.setting matches 2 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fWeather has been changed to §9Thunder"}]

#中文
execute if score language deathswap.setting matches 2 if score weather deathswap.setting matches 0 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f天氣已變更為§b晴朗"}]
execute if score language deathswap.setting matches 2 if score weather deathswap.setting matches 1 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f天氣已變更為§3下雨"}]
execute if score language deathswap.setting matches 2 if score weather deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f天氣已變更為§9雷雨"}]

execute as @a at @s run playsound ui.button.click master @s ~ ~ ~

function deathswap:ui/page/update
