#lib/admin
tag @s add admin
tag @s remove notadmin
scoreboard players set @s deathswap.ui_page 0

#text
execute if score *language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"selector":"@s"},{"text": " §fhas obtained §6Admin"}]
execute if score *language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"selector":"@s"},{"text": " §f已獲得§6管理員權限"}]

execute as @s at @s run playsound entity.player.levelup master @s ~ ~ ~

#prepare stage
execute unless score *game deathswap.status matches 0 run return fail

#ui
clear @s
function deathswap:ui/page/update

#tip
tellraw @s ""
execute if score *language deathswap.setting matches 1 run tellraw @s[gamemode=!creative] [{"text": "§dYou have been obtained Admin. \nOpen your Inventory to enter the Setting Menu"}]
execute if score *language deathswap.setting matches 1 run tellraw @s[gamemode=creative] [{"text": "§dYou have been obtained Admin. \nOpen Setting Book to enter the Setting Menu"}]

execute if score *language deathswap.setting matches 2 run tellraw @s[gamemode=!creative] [{"text": "§d你已獲得管理員權限，打開物品欄即可進入設定介面"}]
execute if score *language deathswap.setting matches 2 run tellraw @s[gamemode=creative] [{"text": "§d你已獲得管理員權限，打開設定書即可進入設定介面"}]
tellraw @s ""

execute if score *language deathswap.setting matches 1 run title @s title [{"text": "§6Admin have been obtained"}]
execute if score *language deathswap.setting matches 1 run execute as @a[gamemode=!creative] run title @s subtitle [{"text": "§fOpen your Inventory to enter the Setting Menu"}]
execute if score *language deathswap.setting matches 1 run execute as @a[gamemode=creative] run title @s subtitle [{"text": "§fOpen Setting Book to enter the Setting Menu"}]

execute if score *language deathswap.setting matches 2 run title @s title [{"text": "§6已獲得管理員權限"}]
execute if score *language deathswap.setting matches 2 run execute as @a[gamemode=!creative] run title @s subtitle [{"text": "§f打開物品欄即可進入設定介面"}]
execute if score *language deathswap.setting matches 2 run execute as @a[gamemode=creative] run title @s subtitle [{"text": "§f打開設定書即可進入設定介面"}]
