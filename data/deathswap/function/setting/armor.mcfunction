scoreboard players add armor deathswap.setting 1
execute if score armor deathswap.setting matches 7 run scoreboard players set armor deathswap.setting 0

#en
execute if score language deathswap.setting matches 1 if score armor deathswap.setting matches 0 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fStart armor is set §cDisable"}]
execute if score language deathswap.setting matches 1 if score armor deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fStart armor is set §aLeather Armor"}]
execute if score language deathswap.setting matches 1 if score armor deathswap.setting matches 2 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fStart armor is set §aChainmail Armor"}]
execute if score language deathswap.setting matches 1 if score armor deathswap.setting matches 3 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fStart armor is set §aIron Armor"}]
execute if score language deathswap.setting matches 1 if score armor deathswap.setting matches 4 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fStart armor is set §aGolden Armor"}]
execute if score language deathswap.setting matches 1 if score armor deathswap.setting matches 5 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fStart armor is set §aDiamond Armor"}]
execute if score language deathswap.setting matches 1 if score armor deathswap.setting matches 6 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fStart armor is set §aNetherite Armor"}]
#中文
execute if score language deathswap.setting matches 2 if score armor deathswap.setting matches 0 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f起始裝備已§c關閉"}]
execute if score language deathswap.setting matches 2 if score armor deathswap.setting matches 1 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f起始裝備已設定為§a皮革裝備"}]
execute if score language deathswap.setting matches 2 if score armor deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f起始裝備已設定為§a鎖鏈裝備"}]
execute if score language deathswap.setting matches 2 if score armor deathswap.setting matches 3 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f起始裝備已設定為§a鐵製裝備"}]
execute if score language deathswap.setting matches 2 if score armor deathswap.setting matches 4 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f起始裝備已設定為§a黃金裝備"}]
execute if score language deathswap.setting matches 2 if score armor deathswap.setting matches 5 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f起始裝備已設定為§a鑽石裝備"}]
execute if score language deathswap.setting matches 2 if score armor deathswap.setting matches 6 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f起始裝備已設定為§a獄髓裝備"}]

execute as @a at @s run playsound ui.button.click master @s ~ ~ ~

function deathswap:ui/page/update
