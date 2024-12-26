scoreboard players add time_set deathswap.setting 1
execute if score time_set deathswap.setting matches 4 run scoreboard players set time_set deathswap.setting 0

execute if score time_set deathswap.setting matches 0 run time set day
execute if score time_set deathswap.setting matches 1 run time set noon
execute if score time_set deathswap.setting matches 2 run time set night
execute if score time_set deathswap.setting matches 3 run time set midnight

#en
execute if score language deathswap.setting matches 1 if score time_set deathswap.setting matches 0 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fTime has been changed to §bDay"}]
execute if score language deathswap.setting matches 1 if score time_set deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fTime has been changed to §6Noon"}]
execute if score language deathswap.setting matches 1 if score time_set deathswap.setting matches 2 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fTime has been changed to §7Night"}]
execute if score language deathswap.setting matches 1 if score time_set deathswap.setting matches 3 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fTime has been changed to §8Midnight"}]

#中文
execute if score language deathswap.setting matches 2 if score time_set deathswap.setting matches 0 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f時間已變更為§b早上"}]
execute if score language deathswap.setting matches 2 if score time_set deathswap.setting matches 1 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f時間已變更為§6中午"}]
execute if score language deathswap.setting matches 2 if score time_set deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f時間已變更為§7傍晚"}]
execute if score language deathswap.setting matches 2 if score time_set deathswap.setting matches 3 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f時間已變更為§8晚上"}]

execute as @a at @s run playsound ui.button.click master @s ~ ~ ~

function deathswap:ui/page/update
