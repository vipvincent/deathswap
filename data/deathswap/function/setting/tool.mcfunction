scoreboard players add tool deathswap.setting 1
execute if score tool deathswap.setting matches 7 run scoreboard players set tool deathswap.setting 0

#en
execute if score language deathswap.setting matches 1 if score tool deathswap.setting matches 0 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fStart tool is set §cDisable"}]
execute if score language deathswap.setting matches 1 if score tool deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fStart tool is set §aWooden Tools"}]
execute if score language deathswap.setting matches 1 if score tool deathswap.setting matches 2 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fStart tool is set §aStone Tools"}]
execute if score language deathswap.setting matches 1 if score tool deathswap.setting matches 3 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fStart tool is set §aIron Tools"}]
execute if score language deathswap.setting matches 1 if score tool deathswap.setting matches 4 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fStart tool is set §aGolden Tools"}]
execute if score language deathswap.setting matches 1 if score tool deathswap.setting matches 5 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fStart tool is set §aDiamond Tools"}]
execute if score language deathswap.setting matches 1 if score tool deathswap.setting matches 6 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fStart tool is set §aNetherite Tools"}]

#中文
execute if score language deathswap.setting matches 2 if score tool deathswap.setting matches 0 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f起始工具已§c關閉"}]
execute if score language deathswap.setting matches 2 if score tool deathswap.setting matches 1 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f起始工具已設定為§a木製工具"}]
execute if score language deathswap.setting matches 2 if score tool deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f起始工具已設定為§a石製工具"}]
execute if score language deathswap.setting matches 2 if score tool deathswap.setting matches 3 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f起始工具已設定為§a鐵製工具"}]
execute if score language deathswap.setting matches 2 if score tool deathswap.setting matches 4 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f起始工具已設定為§a金製工具"}]
execute if score language deathswap.setting matches 2 if score tool deathswap.setting matches 5 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f起始工具已設定為§a鑽石工具"}]
execute if score language deathswap.setting matches 2 if score tool deathswap.setting matches 6 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f起始工具已設定為§a獄髓工具"}]

execute as @a at @s run playsound ui.button.click master @s ~ ~ ~

function deathswap:ui/page/update
