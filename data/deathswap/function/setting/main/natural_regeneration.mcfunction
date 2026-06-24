#--------------------------------------------------
#Death Swap
#data/deathswap/function/setting/main/natural_regeneration.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

scoreboard players add *natural_regeneration deathswap.setting 1
execute if score *natural_regeneration deathswap.setting matches 2 run scoreboard players set *natural_regeneration deathswap.setting 0

#zhtw
execute if score *language deathswap.setting matches 1 if score *natural_regeneration deathswap.setting matches 0 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Natural Regeneration"},{text:" is set "},{text:"Disable",color:"red"}\
]
execute if score *language deathswap.setting matches 1 if score *natural_regeneration deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Natural Regeneration"},{text:" is set "},{text:"Enabled",color:"green"}\
]

#zhtw
execute if score *language deathswap.setting matches 2 if score *natural_regeneration deathswap.setting matches 0 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"自然回血"},{text:"設定為"},{text:"關閉",color:"red"}\
]
execute if score *language deathswap.setting matches 2 if score *natural_regeneration deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"自然回血"},{text:"設定為"},{text:"開啟",color:"green"}\
]

#sound
execute as @a at @s run playsound ui.button.click master @s ~ ~ ~
