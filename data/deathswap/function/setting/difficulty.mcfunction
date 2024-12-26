scoreboard players add difficulty deathswap.setting 1
execute if score difficulty deathswap.setting matches 4 run scoreboard players set difficulty deathswap.setting 0

#en
execute if score language deathswap.setting matches 1 if score difficulty deathswap.setting matches 0 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fDifficulty has been changed to §aPeaceful"}]
execute if score language deathswap.setting matches 1 if score difficulty deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fDifficulty has been changed to §2Easy"}]
execute if score language deathswap.setting matches 1 if score difficulty deathswap.setting matches 2 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fDifficulty has been changed to §6Normal"}]
execute if score language deathswap.setting matches 1 if score difficulty deathswap.setting matches 3 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fDifficulty has been changed to §4Hard"}]

#中文
execute if score language deathswap.setting matches 2 if score difficulty deathswap.setting matches 0 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f難度已變更為§a和平"}]
execute if score language deathswap.setting matches 2 if score difficulty deathswap.setting matches 1 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f難度已變更為§2簡單"}]
execute if score language deathswap.setting matches 2 if score difficulty deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f難度已變更為§6普通"}]
execute if score language deathswap.setting matches 2 if score difficulty deathswap.setting matches 3 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f難度已變更為§4困難"}]
execute as @a at @s run playsound ui.button.click master @s ~ ~ ~

function deathswap:ui/page/update
