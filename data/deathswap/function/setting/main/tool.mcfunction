#--------------------------------------------------
#Death Swap
#data/deathswap/function/setting/main/tool.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

scoreboard players add *tool deathswap.setting 1
execute if score *tool deathswap.setting matches 8 run scoreboard players set *tool deathswap.setting 0

#en Start Tool
execute if score *language deathswap.setting matches 1 if score *tool deathswap.setting matches 0 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Start Tool"},{text:" is set "},{text:"Disable",color:"red"}\
]
execute if score *language deathswap.setting matches 1 if score *tool deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Start Tool"},{text:" is set "},{text:"Wooden Tools",color:"green"}\
]
execute if score *language deathswap.setting matches 1 if score *tool deathswap.setting matches 2 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Start Tool"},{text:" is set "},{text:"Stone Tools",color:"green"}\
]
execute if score *language deathswap.setting matches 1 if score *tool deathswap.setting matches 3 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Start Tool"},{text:" is set "},{text:"Copper Tools",color:"green"}\
]
execute if score *language deathswap.setting matches 1 if score *tool deathswap.setting matches 4 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Start Tool"},{text:" is set "},{text:"Iron Tools",color:"green"}\
]
execute if score *language deathswap.setting matches 1 if score *tool deathswap.setting matches 5 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Start Tool"},{text:" is set "},{text:"Golden Tools",color:"green"}\
]
execute if score *language deathswap.setting matches 1 if score *tool deathswap.setting matches 6 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Start Tool"},{text:" is set "},{text:"Diamond Tools",color:"green"}\
]
execute if score *language deathswap.setting matches 1 if score *tool deathswap.setting matches 7 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Start Tool"},{text:" is set "},{text:"Netherite Tools",color:"green"}\
]

#zhtw 起始工具
execute if score *language deathswap.setting matches 2 if score *tool deathswap.setting matches 0 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"起始工具"},{text:"設定為"},{text:"關閉",color:"red"}\
]
execute if score *language deathswap.setting matches 2 if score *tool deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"起始工具"},{text:"設定為"},{text:"木製工具",color:"green"}\
]
execute if score *language deathswap.setting matches 2 if score *tool deathswap.setting matches 2 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"起始工具"},{text:"設定為"},{text:"石製工具",color:"green"}\
]
execute if score *language deathswap.setting matches 2 if score *tool deathswap.setting matches 3 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"起始工具"},{text:"設定為"},{text:"銅製工具",color:"green"}\
]
execute if score *language deathswap.setting matches 2 if score *tool deathswap.setting matches 4 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"起始工具"},{text:"設定為"},{text:"鐵製工具",color:"green"}\
]
execute if score *language deathswap.setting matches 2 if score *tool deathswap.setting matches 5 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"起始工具"},{text:"設定為"},{text:"金製工具",color:"green"}\
]
execute if score *language deathswap.setting matches 2 if score *tool deathswap.setting matches 6 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"起始工具"},{text:"設定為"},{text:"鑽石工具",color:"green"}\
]
execute if score *language deathswap.setting matches 2 if score *tool deathswap.setting matches 7 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"起始工具"},{text:"設定為"},{text:"獄髓工具",color:"green"}\
]

#sound
execute as @a at @s run playsound ui.button.click master @s ~ ~ ~
