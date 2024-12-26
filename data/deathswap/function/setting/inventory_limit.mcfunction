scoreboard players remove inventory_limit deathswap.setting 1
execute if score inventory_limit deathswap.setting matches 1 run scoreboard players set inventory_limit deathswap.setting 37
execute if score inventory_limit deathswap.setting matches 36 run scoreboard players set inventory_limit deathswap.setting 28
execute if score inventory_limit deathswap.setting matches 27 run scoreboard players set inventory_limit deathswap.setting 19
execute if score inventory_limit deathswap.setting matches 18 run scoreboard players set inventory_limit deathswap.setting 10
execute if score inventory_limit deathswap.setting matches 9 run scoreboard players set inventory_limit deathswap.setting 2


#en
execute if score language deathswap.setting matches 1 if score inventory_limit deathswap.setting matches 37 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fInventory limit is §cDisable"}]
execute if score language deathswap.setting matches 1 if score inventory_limit deathswap.setting matches 28 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fInventory has been limited to §a28 spaces left"}]
execute if score language deathswap.setting matches 1 if score inventory_limit deathswap.setting matches 19 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fInventory has been limited to §a19 spaces left"}]
execute if score language deathswap.setting matches 1 if score inventory_limit deathswap.setting matches 10 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fInventory has been limited to §a10 spaces left"}]
execute if score language deathswap.setting matches 1 if score inventory_limit deathswap.setting matches 2 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fInventory has been limited to §a2 spaces left"}]

#中文
execute if score language deathswap.setting matches 2 if score inventory_limit deathswap.setting matches 37 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f物品欄限制已§c關閉"}]
execute if score language deathswap.setting matches 2 if score inventory_limit deathswap.setting matches 28 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f物品欄已限制剩下§a28格"}]
execute if score language deathswap.setting matches 2 if score inventory_limit deathswap.setting matches 19 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f物品欄已限制剩下§a19格"}]
execute if score language deathswap.setting matches 2 if score inventory_limit deathswap.setting matches 10 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f物品欄已限制剩下§a10格"}]
execute if score language deathswap.setting matches 2 if score inventory_limit deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f物品欄已限制剩下§a2格(主手+副手)"}]

execute as @a at @s run playsound ui.button.click master @s ~ ~ ~

function deathswap:ui/page/update
