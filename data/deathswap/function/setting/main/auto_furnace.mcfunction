#--------------------------------------------------
#Death Swap
#data/deathswap/function/setting/main/furnace.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

scoreboard players add *auto_furnace deathswap.setting 1
execute if score *auto_furnace deathswap.setting matches 2 run scoreboard players set *auto_furnace deathswap.setting 0

#en
execute if score *language deathswap.setting matches 1 if score *auto_furnace deathswap.setting matches 0 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Automatic Furnace"},{text:" is set "},{text:"Disable",color:"red"}\
]
execute if score *language deathswap.setting matches 1 if score *auto_furnace deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Automatic Furnace"},{text:" is set "},{text:"Enabled",color:"green"}\
]

#zhtw
execute if score *language deathswap.setting matches 2 if score *auto_furnace deathswap.setting matches 0 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"物品免燒"},{text:"設定為"},{text:"關閉",color:"red"}\
]
execute if score *language deathswap.setting matches 2 if score *auto_furnace deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"物品免燒"},{text:"設定為"},{text:"開啟",color:"green"}\
]

#sound
execute as @a at @s run playsound ui.button.click master @s ~ ~ ~
