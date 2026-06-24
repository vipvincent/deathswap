#--------------------------------------------------
#Death Swap
#data/deathswap/function/setting/main/weather.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

scoreboard players add *weather deathswap.setting 1
execute if score *weather deathswap.setting matches 3 run scoreboard players set *weather deathswap.setting 0

#set weather
execute if score *weather deathswap.setting matches 0 run weather clear
execute if score *weather deathswap.setting matches 1 run weather rain
execute if score *weather deathswap.setting matches 2 run weather thunder

#en
execute if score *language deathswap.setting matches 1 if score *weather deathswap.setting matches 0 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Weather"},{text:" is set "},{text:"Clear",color:"yellow"}\
]
execute if score *language deathswap.setting matches 1 if score *weather deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Weather"},{text:" is set "},{text:"Rain",color:"yellow"}\
]
execute if score *language deathswap.setting matches 1 if score *weather deathswap.setting matches 2 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Weather"},{text:" is set "},{text:"Thunder",color:"yellow"}\
]

#zhtw
execute if score *language deathswap.setting matches 2 if score *weather deathswap.setting matches 0 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"天氣"},{text:"設定為"},{text:"晴朗",color:"yellow"}\
]
execute if score *language deathswap.setting matches 2 if score *weather deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"天氣"},{text:"設定為"},{text:"下雨",color:"yellow"}\
]
execute if score *language deathswap.setting matches 2 if score *weather deathswap.setting matches 2 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"天氣"},{text:"設定為"},{text:"雷雨",color:"yellow"}\
]

#sound
execute as @a at @s run playsound ui.button.click master @s ~ ~ ~
