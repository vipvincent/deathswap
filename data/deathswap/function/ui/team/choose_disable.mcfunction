function deathswap:ui/page/update

execute if score language deathswap.setting matches 1 run tellraw @s [{"text":"§cTeam selection has been disabled!"}]
execute if score language deathswap.setting matches 2 run tellraw @s [{"text":"§c選隊權限尚未啟用！"}]

execute at @s run playsound entity.villager.no master @s ~ ~ ~