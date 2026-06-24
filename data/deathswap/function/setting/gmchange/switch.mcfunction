#--------------------------------------------------
#Death Swap
#data/deathswap/function/setting/gmchange/switch.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

scoreboard players add *gmchange deathswap.setting 1
execute if score *gmchange deathswap.setting matches 2 run scoreboard players set *gmchange deathswap.setting 0

#en
execute if score *language deathswap.setting matches 1 if score *gmchange deathswap.setting matches 0 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Game Mode Auto Switch"},{text:" is set "},{text:"Disable",color:"red"}\
]
execute if score *language deathswap.setting matches 1 if score *gmchange deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Game Mode Auto Switch"},{text:" is set "},{text:"Enabled",color:"green"}\
]

#zhtw
execute if score *language deathswap.setting matches 2 if score *gmchange deathswap.setting matches 0 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"遊戲模式自動切換"},{text:"設定為"},{text:"關閉",color:"red"}\
]
execute if score *language deathswap.setting matches 2 if score *gmchange deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"遊戲模式自動切換"},{text:"設定為"},{text:"開啟",color:"green"}\
]

#tip
execute if score *gmchange deathswap.setting matches 1 if score *language deathswap.setting matches 1 run tellraw @a [\
    {text:"",color:gray},\
    "(Note: It is recommended to restrict certain items,","\n",\
    " such as Totem of Undying, Enchanted/Golden Apple,","\n",\
    " Potion, and Suspicious Stew.)" \
]
execute if score *gmchange deathswap.setting matches 1 if score *language deathswap.setting matches 2 run tellraw @a [\
    {text:"(註：建議自行限制物品，如：不死圖騰、附魔/金蘋果、藥水、可疑的燉湯)",color:gray},\
]

#sound
execute as @a at @s run playsound ui.button.click master @s ~ ~ ~
