#--------------------------------------------------
#Death Swap
#data/deathswap/function/play/swap/main.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#count
scoreboard players add *swap_count deathswap.status 1

#swap_invincible
execute if score *swap_invincible deathswap.setting matches 1 run effect give @a[tag=player] resistance 1 255 true
execute if score *swap_invincible deathswap.setting matches 3 run effect give @a[tag=player] resistance 3 255 true
execute if score *swap_invincible deathswap.setting matches 5 run effect give @a[tag=player] resistance 5 255 true

#---
#mode
execute if score *mode deathswap.setting matches 0 run function deathswap:play/swap/solo/main
execute if score *mode deathswap.setting matches 1 run function deathswap:play/swap/team/main

#end kill_pos
kill @e[tag=pos]

#reset
scoreboard players reset * deathswap.swap_original
scoreboard players reset * deathswap.swap_calculated

#---
#title
title @a title ""
execute if score *language deathswap.setting matches 1 run title @a subtitle {text:"Swap!",color:"gold"}
execute if score *language deathswap.setting matches 2 run title @a subtitle {text:"交換！",color:"gold"}

#text
execute if score *language deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {"text": "Swap! "},\
    [\
        {"text": "Round ","color": "white"},{"score":{"name": "*swap_count","objective": "deathswap.status"}},{"text": " - "},\
        {"score":{"name": "*round_time","objective": "deathswap.timer"}},{"text": "s"}\
    ]\
]
execute if score *language deathswap.setting matches 2 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {"text": "交換！"},\
    [\
        {"text": "第","color": "white"},{"score":{"name": "*swap_count","objective": "deathswap.status"}},{"text": "回合"},{"text": " - "},\
        {"score":{"name": "*round_time","objective": "deathswap.timer"}},{"text": "秒"}\
    ]\
]

#sound
execute as @a at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~

#---
#adv
advancement grant @a[tag=player] only deathswap:main/criteria/swap

#get new swap_time
function deathswap:play/swap/swap_time

#gmchange pause
function deathswap:play/gmchange/pause