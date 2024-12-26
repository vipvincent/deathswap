tag @s add admin
tag @s remove notadmin

execute if score game deathswap.status matches 0 run clear @s
scoreboard players set @s deathswap.ui_page 0

execute if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"selector":"@s"},{"text": " §fhas obtained §6admin rights"}]
execute if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"selector":"@s"},{"text": " §f已獲得§6管理員權限"}]

execute if score game deathswap.status matches 0 if score language deathswap.setting matches 1 run title @s title [{"text": "§6Admin rights have been obtained"}]
execute if score game deathswap.status matches 0 if score language deathswap.setting matches 1 run execute as @a[gamemode=!creative] run title @s subtitle [{"text": "§fOpen the inventory to enter the setting menu"}]
execute if score game deathswap.status matches 0 if score language deathswap.setting matches 1 run execute as @a[gamemode=creative] run title @s subtitle [{"text": "§fRight-click book to enter the setting menu"}]

execute if score game deathswap.status matches 0 if score language deathswap.setting matches 2 run title @s title [{"text": "§6已獲得管理員權限"}]
execute if score game deathswap.status matches 0 if score language deathswap.setting matches 2 run execute as @a[gamemode=!creative] run title @s subtitle [{"text": "§f打開物品欄即可進入設定介面"}]
execute if score game deathswap.status matches 0 if score language deathswap.setting matches 2 run execute as @a[gamemode=creative] run title @s subtitle [{"text": "§f右鍵書本即可進入設定介面"}]

execute as @s at @s run playsound entity.player.levelup master @s ~ ~ ~

function deathswap:ui/page/update