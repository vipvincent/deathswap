scoreboard players add killer.quantity deathswap.setting 1
execute if score killer.quantity deathswap.setting matches 2 run scoreboard players set killer.quantity deathswap.setting 0

#en
execute if score language deathswap.setting matches 1 if score killer.quantity deathswap.setting matches 0 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fNumber of killers is set to §ejust one"}]
execute if score language deathswap.setting matches 1 if score killer.quantity deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fNumber of killers is set to §eone per team"}]

#中文
execute if score language deathswap.setting matches 2 if score killer.quantity deathswap.setting matches 0 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f殺手數量已設為§e僅一個"}]
execute if score language deathswap.setting matches 2 if score killer.quantity deathswap.setting matches 1 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f殺手數量已設為§e每隊一個"}]

execute as @a at @s run playsound ui.button.click master @s ~ ~ ~

function deathswap:ui/page/update