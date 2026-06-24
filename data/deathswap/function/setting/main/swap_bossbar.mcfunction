#--------------------------------------------------
#Death Swap
#data/deathswap/function/setting/main/swap_bossbar.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

scoreboard players add *swap_bossbar deathswap.setting 1
execute if score *swap_bossbar deathswap.setting matches 2 run scoreboard players set *swap_bossbar deathswap.setting 0

#en
execute if score *language deathswap.setting matches 1 if score *swap_bossbar deathswap.setting matches 0 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Swap Countdown"},{text:" is set "},{text:"Spectators",color:"red"}\
]
execute if score *language deathswap.setting matches 1 if score *swap_bossbar deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Swap Countdown"},{text:" is set "},{text:"Everyone",color:"green"}\
]

#zhtw
execute if score *language deathswap.setting matches 2 if score *swap_bossbar deathswap.setting matches 0 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"交換倒數進度條"},{text:"設定為"},{text:"僅旁觀者可見",color:"red"}\
]
execute if score *language deathswap.setting matches 2 if score *swap_bossbar deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"交換倒數進度條"},{text:"設定為"},{text:"所有人可見",color:"green"}\
]

#sound
execute as @a at @s run playsound ui.button.click master @s ~ ~ ~
