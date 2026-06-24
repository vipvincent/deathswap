#--------------------------------------------------
#Death Swap
#data/deathswap/function/setting/killer/default.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

scoreboard players set *killer.quantity deathswap.setting 0
scoreboard players set *killer.eliminated_alert deathswap.setting 0
scoreboard players set *killer.weapon deathswap.setting 0

#---
#text
execute if score *language deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Killer Mode Settings",color:"yellow"},{text:" have been reset"}\
]
execute if score *language deathswap.setting matches 2 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"殺手模式設定",color:"yellow"},{text:"已重設"}\
]

#sound
execute if score *language deathswap.setting matches 1.. as @a at @s run playsound ui.button.click master @s ~ ~ ~