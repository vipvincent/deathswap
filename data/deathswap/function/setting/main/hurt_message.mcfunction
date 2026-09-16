#--------------------------------------------------
#Death Swap
#data/deathswap/function/setting/main/hurt_message.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

scoreboard players add *hurt_message deathswap.setting 1
execute if score *hurt_message deathswap.setting matches 3 run scoreboard players set *hurt_message deathswap.setting 0

#en
execute if score *language deathswap.setting matches 1 if score *hurt_message deathswap.setting matches 0 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Hurt Message"},{text:" is set "},{text:"Disable",color:"red"}\
]
execute if score *language deathswap.setting matches 1 if score *hurt_message deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Hurt Message"},{text:" is set "},{text:"show only teammates",color:"green"}\
]
execute if score *language deathswap.setting matches 1 if score *hurt_message deathswap.setting matches 2 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Hurt Message"},{text:" is set "},{text:"show all",color:"green"}\
]

#zhtw
execute if score *language deathswap.setting matches 2 if score *hurt_message deathswap.setting matches 0 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"受傷訊息"},{text:"設定為"},{text:"關閉",color:"red"}\
]
execute if score *language deathswap.setting matches 2 if score *hurt_message deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"受傷訊息"},{text:"設定為"},{text:"僅同隊顯示",color:"green"}\
]
execute if score *language deathswap.setting matches 2 if score *hurt_message deathswap.setting matches 2 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"受傷訊息"},{text:"設定為"},{text:"所有人顯示",color:"green"}\
]

#sound
execute as @a at @s run playsound ui.button.click master @s ~ ~ ~
