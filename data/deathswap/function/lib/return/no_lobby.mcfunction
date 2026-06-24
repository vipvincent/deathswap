#--------------------------------------------------
#Death Swap
#data/deathswap/function/lib/return/no_lobby.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#text
execute if score *language deathswap.setting matches 1 run tellraw @s [\
    {storage:"deathswap:ui",nbt:"text.error_prefix",interpret:true},\
    {text:"The Game Lobby has not been set up yet!"}\
]
execute if score *language deathswap.setting matches 2 run tellraw @s [\
    {storage:"deathswap:ui",nbt:"text.error_prefix",interpret:true},\
    {text:"尚未設置遊戲大廳！"}\
]

#sound
execute at @s run playsound entity.villager.no master @s ~ ~ ~