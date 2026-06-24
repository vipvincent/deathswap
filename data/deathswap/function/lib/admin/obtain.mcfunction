#--------------------------------------------------
#Death Swap
#data/deathswap/function/lib/admin/obtain.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#tag
tag @s remove notadmin
tag @s add admin
scoreboard players set @s deathswap.ui_page 0

#text
execute if score *language deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {selector:"@s"},{text:" has obtained "},{text:"Admin",color:"yellow"}\
]
execute if score *language deathswap.setting matches 2 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {selector:"@s"},{text:" 獲得了"},{text:"管理員權限",color:"yellow"}\
]

#sound
execute as @s at @s run playsound entity.player.levelup master @s ~ ~ ~

#---
#prepare stage
execute unless score *game deathswap.status matches 0 run return fail

#creative tag
tag @s[gamemode=creative] add creative

#clear ui
clear @s

#tip
tellraw @s ""
execute if score *language deathswap.setting matches 1 run tellraw @s[gamemode=!creative] {text:"You have been obtained Admin. \nOpen your Inventory to enter the Setting Menu",color:"light_purple"}
execute if score *language deathswap.setting matches 1 run tellraw @s[gamemode=creative] {text:"You have been obtained Admin. \nOpen Setting Book to enter the Setting Menu",color:"light_purple"}

execute if score *language deathswap.setting matches 2 run tellraw @s[gamemode=!creative] {text:"你獲得了管理員權限，打開物品欄即可進入設定介面",color:"light_purple"}
execute if score *language deathswap.setting matches 2 run tellraw @s[gamemode=creative] {text:"你獲得了管理員權限，使用設定書即可進入設定介面",color:"light_purple"}
tellraw @s ""

#title
execute if score *language deathswap.setting matches 1 run title @s title {text:"Admin have been obtained",color:"yellow"}
execute if score *language deathswap.setting matches 1 run execute as @a[gamemode=!creative] run title @s subtitle {text:"Open your Inventory to enter the Setting Menu"}
execute if score *language deathswap.setting matches 1 run execute as @a[gamemode=creative] run title @s subtitle {text:"Use Setting Book to enter the Setting Menu"}

execute if score *language deathswap.setting matches 2 run title @s title {text:"已獲得管理員權限",color:"yellow"}
execute if score *language deathswap.setting matches 2 run execute as @a[gamemode=!creative] run title @s subtitle {text:"打開物品欄即可進入設定介面"}
execute if score *language deathswap.setting matches 2 run execute as @a[gamemode=creative] run title @s subtitle {text:"使用設定書即可進入設定介面"}
