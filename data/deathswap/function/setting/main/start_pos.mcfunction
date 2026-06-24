#--------------------------------------------------
#Death Swap
#data/deathswap/function/setting/main/start_pos.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

scoreboard players add *start_pos deathswap.setting 1
execute if score *start_pos deathswap.setting matches 2 run scoreboard players set *start_pos deathswap.setting 0

#en
execute if score *language deathswap.setting matches 1 if score *start_pos deathswap.setting matches 0 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Game Start Point"},{text:" is set "},{text:"Random",color:"yellow"}\
]
execute if score *language deathswap.setting matches 1 if score *start_pos deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Game Start Point"},{text:" is set "},{text:"Lobby",color:"yellow"}\
]

#zhtw
execute if score *language deathswap.setting matches 2 if score *start_pos deathswap.setting matches 0 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"遊戲開始點"},{text:"設定為"},{text:"隨機",color:"yellow"}\
]
execute if score *language deathswap.setting matches 2 if score *start_pos deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"遊戲開始點"},{text:"設定為"},{text:"大廳",color:"yellow"}\
]

#sound
execute as @a at @s run playsound ui.button.click master @s ~ ~ ~
