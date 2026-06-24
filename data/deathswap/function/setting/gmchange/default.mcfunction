#--------------------------------------------------
#Death Swap
#data/deathswap/function/setting/gmchange/default.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#gmchange
scoreboard players set *gmchange.survival_time deathswap.setting 60
scoreboard players set *gmchange.creative_time deathswap.setting 5

#---
#text
execute if score *language deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Game Mode Auto Switch Settings",color:"yellow"},{text:" have been reset"}\
]
execute if score *language deathswap.setting matches 2 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"遊戲模式定時切換設定",color:"yellow"},{text:"已重設"}\
]

#sound
execute if score *language deathswap.setting matches 1.. as @a at @s run playsound ui.button.click master @s ~ ~ ~