#--------------------------------------------------
#Death Swap
#data/deathswap/function/setting/killer/switch.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

scoreboard players add *killer deathswap.setting 1
execute if score *killer deathswap.setting matches 2 run scoreboard players set *killer deathswap.setting 0

#en
execute if score *language deathswap.setting matches 1 if score *killer deathswap.setting matches 0 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Killer Mode"},{text:" is set "},{text:"Disable",color:"red"}\
]
execute if score *language deathswap.setting matches 1 if score *killer deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Killer Mode"},{text:" is set "},{text:"Enabled",color:"green"}\
]

#zhtw
execute if score *language deathswap.setting matches 2 if score *killer deathswap.setting matches 0 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"殺手模式"},{text:"設定為"},{text:"關閉",color:"red"}\
]
execute if score *language deathswap.setting matches 2 if score *killer deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"殺手模式"},{text:"設定為"},{text:"開啟",color:"green"}\
]

#sound
execute as @a at @s run playsound ui.button.click master @s ~ ~ ~
