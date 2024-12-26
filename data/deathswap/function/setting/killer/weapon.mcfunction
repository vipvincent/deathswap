scoreboard players add killer.weapon deathswap.setting 1
execute if score killer.weapon deathswap.setting matches 7 run scoreboard players set killer.weapon deathswap.setting 0

#en
execute if score language deathswap.setting matches 1 if score killer.weapon deathswap.setting matches 0 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fThe killer weapon is set §cNone"}]
execute if score language deathswap.setting matches 1 if score killer.weapon deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fThe killer weapon is set §aWooden Sword"}]
execute if score language deathswap.setting matches 1 if score killer.weapon deathswap.setting matches 2 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fThe killer weapon is set §aStone Sword"}]
execute if score language deathswap.setting matches 1 if score killer.weapon deathswap.setting matches 3 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fThe killer weapon is set §aIron Sword"}]
execute if score language deathswap.setting matches 1 if score killer.weapon deathswap.setting matches 4 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fThe killer weapon is set §aGolden Sword"}]
execute if score language deathswap.setting matches 1 if score killer.weapon deathswap.setting matches 5 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fThe killer weapon is set §aDiamond Sword"}]
execute if score language deathswap.setting matches 1 if score killer.weapon deathswap.setting matches 6 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fThe killer weapon is set §aNetherite Sword"}]

#中文
execute if score language deathswap.setting matches 2 if score killer.weapon deathswap.setting matches 0 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f殺手武器已設定為§c無"}]
execute if score language deathswap.setting matches 2 if score killer.weapon deathswap.setting matches 1 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f殺手武器已設定為§a木劍"}]
execute if score language deathswap.setting matches 2 if score killer.weapon deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f殺手武器已設定為§a石劍"}]
execute if score language deathswap.setting matches 2 if score killer.weapon deathswap.setting matches 3 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f殺手武器已設定為§a鐵劍"}]
execute if score language deathswap.setting matches 2 if score killer.weapon deathswap.setting matches 4 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f殺手武器已設定為§a金劍"}]
execute if score language deathswap.setting matches 2 if score killer.weapon deathswap.setting matches 5 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f殺手武器已設定為§a鑽石劍"}]
execute if score language deathswap.setting matches 2 if score killer.weapon deathswap.setting matches 6 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f殺手武器已設定為§a獄髓劍"}]

execute as @a at @s run playsound ui.button.click master @s ~ ~ ~

function deathswap:ui/page/update
