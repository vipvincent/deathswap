#--------------------------------------------------
#Death Swap
#data/deathswap/function/play/eliminated.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#killer
execute if score *killer deathswap.setting matches 1 run tellraw @a {"translate": "death.attack.generic","with": [{"selector": "@s"}]}

#tag
tag @s remove player
tag @s add eliminated
tag @s add spectator

#gamemode
gamemode spectator @s

#still_off
function deathswap:lib/still/off

#update count
function deathswap:lib/count
scoreboard players operation *player_count_update deathswap.status = *player_count deathswap.status

#last death
function deathswap:lib/last_death/main

#---
#title
title @a title ""
execute if score *language deathswap.setting matches 1 run title @s title {text:"You died!",color:"red"}
execute if score *language deathswap.setting matches 2 run title @s title {text:"你死了！",color:"red"}
execute if score *language deathswap.setting matches 1 run title @a subtitle ["",{text:"❌ ",color:"red"},{selector:"@s"},{text: " Eliminated!",color:"red"}]
execute if score *language deathswap.setting matches 2 run title @a subtitle ["",{text:"❌ ",color:"red"},{selector:"@s"},{text: " 淘汰！ ",color:"red"}]

#text - Eliminated
execute if score *language deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"❌ ",color:"red"},{selector:"@s"},{text:" Eliminated!"}\
]
execute if score *language deathswap.setting matches 2 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"❌ ",color:"red"},{selector:"@s"},{text:" 淘汰！"}\
]

#text - killer died
execute if entity @s[tag=killer] if score *killer.eliminated_alert deathswap.setting matches 1 if score *language deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"The killer named "},{selector:"@s",color:"dark_red"},{text:" has been eliminated!"}\
]
execute if entity @s[tag=killer] if score *killer.eliminated_alert deathswap.setting matches 1 if score *language deathswap.setting matches 2 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"一位殺手名為 "},{selector:"@s",color:"dark_red"},{text:" 已被淘汰！"}\
]

#sound
execute as @a at @s run playsound entity.wither.break_block master @s ~ ~ ~

#adv
advancement grant @s only deathswap:main/criteria/eliminated