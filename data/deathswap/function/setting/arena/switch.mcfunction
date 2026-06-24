#--------------------------------------------------
#Death Swap
#data/deathswap/function/setting/arena/switch.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

scoreboard players add *arena deathswap.setting 1
execute if score *arena deathswap.setting matches 2 run scoreboard players set *arena deathswap.setting 0

#en
execute if score *language deathswap.setting matches 1 if score *arena deathswap.setting matches 0 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Arena"},{text:" is set "},{text:"Disable",color:"red"}\
]
execute if score *language deathswap.setting matches 1 if score *arena deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Arena"},{text:" is set "},{text:"Enabled",color:"green"}\
]

#zhtw
execute if score *language deathswap.setting matches 2 if score *arena deathswap.setting matches 0 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"競技場"},{text:"設定為"},{text:"關閉",color:"red"}\
]
execute if score *language deathswap.setting matches 2 if score *arena deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"競技場"},{text:"設定為"},{text:"開啟",color:"green"}\
]

#sound
execute as @a at @s run playsound ui.button.click master @s ~ ~ ~
