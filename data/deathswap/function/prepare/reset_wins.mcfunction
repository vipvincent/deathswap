#--------------------------------------------------
#Death Swap
#data/deathswap/function/prepare/reset_wins.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#reset win
scoreboard players reset * deathswap.win_score

#reload display
scoreboard players reset * deathswap.display.rank

#---
#text
execute if score *language deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Win Score",color:"yellow"},{text:" have been reset"}\
]
execute if score *language deathswap.setting matches 2 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"獲勝分數",color:"yellow"},{text:"已重製"}\
]

#sound
execute as @a at @s run playsound ui.button.click master @s ~ ~ ~
