#--------------------------------------------------
#Death Swap
#data/deathswap/function/setting/main/time.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

scoreboard players add *time_set deathswap.setting 1
execute if score *time_set deathswap.setting matches 4 run scoreboard players set *time_set deathswap.setting 0

#set time
execute if score *time_set deathswap.setting matches 0 run time set day
execute if score *time_set deathswap.setting matches 1 run time set noon
execute if score *time_set deathswap.setting matches 2 run time set night
execute if score *time_set deathswap.setting matches 3 run time set midnight

#en
execute if score *language deathswap.setting matches 1 if score *time_set deathswap.setting matches 0 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Time"},{text:" is set "},{text:"Day",color:"yellow"}\
]
execute if score *language deathswap.setting matches 1 if score *time_set deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Time"},{text:" is set "},{text:"Noon",color:"yellow"}\
]
execute if score *language deathswap.setting matches 1 if score *time_set deathswap.setting matches 2 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Time"},{text:" is set "},{text:"Night",color:"yellow"}\
]
execute if score *language deathswap.setting matches 1 if score *time_set deathswap.setting matches 3 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Time"},{text:" is set "},{text:"Midnight",color:"yellow"}\
]

#zhtw
execute if score *language deathswap.setting matches 2 if score *time_set deathswap.setting matches 0 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"時間"},{text:"設定為"},{text:"早上",color:"yellow"}\
]
execute if score *language deathswap.setting matches 2 if score *time_set deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"時間"},{text:"設定為"},{text:"中午",color:"yellow"}\
]
execute if score *language deathswap.setting matches 2 if score *time_set deathswap.setting matches 2 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"時間"},{text:"設定為"},{text:"傍晚",color:"yellow"}\
]
execute if score *language deathswap.setting matches 2 if score *time_set deathswap.setting matches 3 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"時間"},{text:"設定為"},{text:"晚上",color:"yellow"}\
]

#sound
execute as @a at @s run playsound ui.button.click master @s ~ ~ ~
