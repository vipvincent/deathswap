scoreboard players add hp_adj deathswap.setting 1
execute if score hp_adj deathswap.setting matches 2 run scoreboard players set hp_adj deathswap.setting 10
execute if score hp_adj deathswap.setting matches 11 run scoreboard players set hp_adj deathswap.setting 20
execute if score hp_adj deathswap.setting matches 21 run scoreboard players set hp_adj deathswap.setting 30
execute if score hp_adj deathswap.setting matches 31 run scoreboard players set hp_adj deathswap.setting 40
execute if score hp_adj deathswap.setting matches 41 run scoreboard players set hp_adj deathswap.setting 50
execute if score hp_adj deathswap.setting matches 51 run scoreboard players set hp_adj deathswap.setting 60
execute if score hp_adj deathswap.setting matches 61 run scoreboard players set hp_adj deathswap.setting 1

#hp_adj display
execute if score hp_adj deathswap.setting matches 1 as @a run attribute @s minecraft:max_health base set 1
execute if score hp_adj deathswap.setting matches 10 as @a run attribute @s minecraft:max_health base set 10
execute if score hp_adj deathswap.setting matches 20 as @a run attribute @s minecraft:max_health base set 20
execute if score hp_adj deathswap.setting matches 30 as @a run attribute @s minecraft:max_health base set 30
execute if score hp_adj deathswap.setting matches 40 as @a run attribute @s minecraft:max_health base set 40
execute if score hp_adj deathswap.setting matches 50 as @a run attribute @s minecraft:max_health base set 50
execute if score hp_adj deathswap.setting matches 60 as @a run attribute @s minecraft:max_health base set 60

#en
execute if score language deathswap.setting matches 1 if score hp_adj deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fHP is set §a1 point"}]
execute if score language deathswap.setting matches 1 if score hp_adj deathswap.setting matches 10 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fHP is set §a10 points"}]
execute if score language deathswap.setting matches 1 if score hp_adj deathswap.setting matches 20 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fHP is set §c20 points (Minecraft Default)"}]
execute if score language deathswap.setting matches 1 if score hp_adj deathswap.setting matches 30 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fHP is set §a30 points"}]
execute if score language deathswap.setting matches 1 if score hp_adj deathswap.setting matches 40 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fHP is set §a40 points"}]
execute if score language deathswap.setting matches 1 if score hp_adj deathswap.setting matches 50 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fHP is set §a50 points"}]
execute if score language deathswap.setting matches 1 if score hp_adj deathswap.setting matches 60 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fHP is set §a60 points"}]

#中文
execute if score language deathswap.setting matches 2 if score hp_adj deathswap.setting matches 1 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f血量已設定為§a1點"}]
execute if score language deathswap.setting matches 2 if score hp_adj deathswap.setting matches 10 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f血量已設定為§a10點"}]
execute if score language deathswap.setting matches 2 if score hp_adj deathswap.setting matches 20 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f血量已設定為§c20點(Minecraft預設值)"}]
execute if score language deathswap.setting matches 2 if score hp_adj deathswap.setting matches 30 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f血量已設定為§a30點"}]
execute if score language deathswap.setting matches 2 if score hp_adj deathswap.setting matches 40 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f血量已設定為§a40點"}]
execute if score language deathswap.setting matches 2 if score hp_adj deathswap.setting matches 50 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f血量已設定為§a50點"}]
execute if score language deathswap.setting matches 2 if score hp_adj deathswap.setting matches 60 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f血量已設定為§a60點"}]

execute as @a at @s run playsound ui.button.click master @s ~ ~ ~

function deathswap:ui/page/update
