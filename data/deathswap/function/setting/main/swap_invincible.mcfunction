#--------------------------------------------------
#Death Swap
#data/deathswap/function/setting/main/swap_invincible.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

scoreboard players add *swap_invincible deathswap.setting 1
execute if score *swap_invincible deathswap.setting matches 2 run scoreboard players set *swap_invincible deathswap.setting 3
execute if score *swap_invincible deathswap.setting matches 4 run scoreboard players set *swap_invincible deathswap.setting 5
execute if score *swap_invincible deathswap.setting matches 6 run scoreboard players set *swap_invincible deathswap.setting 0

#en Swap Invincibility
execute if score *language deathswap.setting matches 1 if score *swap_invincible deathswap.setting matches 0 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Swap Invincibility"},{text:" is set "},{text:"Disable",color:"red"}\
]
execute if score *language deathswap.setting matches 1 if score *swap_invincible deathswap.setting matches 1.. run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Swap Invincibility"},{text:" is set "},\
    [{score:{name:"*swap_invincible",objective:"deathswap.setting"},color:"green"},"s"]\
]

#zhtw
execute if score *language deathswap.setting matches 2 if score *swap_invincible deathswap.setting matches 0 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"交換無敵"},{text:"設定為"},{text:"關閉",color:"red"}\
]
execute if score *language deathswap.setting matches 2 if score *swap_invincible deathswap.setting matches 1.. run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"交換無敵"},{text:"設定為"},\
    [{score:{name:"*swap_invincible",objective:"deathswap.setting"},color:"green"},"秒"]\
]

#sound
execute as @a at @s run playsound ui.button.click master @s ~ ~ ~
