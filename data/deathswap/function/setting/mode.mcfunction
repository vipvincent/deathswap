#--------------------------------------------------
#Death Swap
#data/deathswap/function/setting/mode.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

# 0 solo battle
# 1 team battle

scoreboard players add *mode deathswap.setting 1
execute if score *mode deathswap.setting matches 2 run scoreboard players set *mode deathswap.setting 0

#en
execute if score *language deathswap.setting matches 1 if score *mode deathswap.setting matches 0 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Mode"},{text:" is set "},{text:"Solo Battle",color:"yellow"}\
]
execute if score *language deathswap.setting matches 1 if score *mode deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Mode"},{text:" is set "},{text:"Team Battle",color:"yellow"}\
]

#zhtw
execute if score *language deathswap.setting matches 2 if score *mode deathswap.setting matches 0 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"模式"},{text:"設定為"},{text:"個人戰",color:"yellow"}\
]
execute if score *language deathswap.setting matches 2 if score *mode deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"模式"},{text:"設定為"},{text:"隊伍戰",color:"yellow"}\
]

#sound
execute as @a at @s run playsound ui.button.click master @s ~ ~ ~

#reset team
function deathswap:team/reset_team_non-spectator
