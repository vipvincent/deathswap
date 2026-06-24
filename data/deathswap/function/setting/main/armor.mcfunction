#--------------------------------------------------
#Death Swap
#data/deathswap/function/setting/main/armor.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

scoreboard players add *armor deathswap.setting 1
execute if score *armor deathswap.setting matches 8 run scoreboard players set *armor deathswap.setting 0

#en
execute if score *language deathswap.setting matches 1 if score *armor deathswap.setting matches 0 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Start Armor"},{text:" is set "},{text:"Disable",color:"red"}\
]
execute if score *language deathswap.setting matches 1 if score *armor deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Start Armor"},{text:" is set "},{text:"Leather Armor",color:"green"}\
]
execute if score *language deathswap.setting matches 1 if score *armor deathswap.setting matches 2 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Start Armor"},{text:" is set "},{text:"Copper Armor",color:"green"}\
]
execute if score *language deathswap.setting matches 1 if score *armor deathswap.setting matches 3 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Start Armor"},{text:" is set "},{text:"Chainmail Armor",color:"green"}\
]
execute if score *language deathswap.setting matches 1 if score *armor deathswap.setting matches 4 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Start Armor"},{text:" is set "},{text:"Iron Armor",color:"green"}\
]
execute if score *language deathswap.setting matches 1 if score *armor deathswap.setting matches 5 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Start Armor"},{text:" is set "},{text:"Golden Armor",color:"green"}\
]
execute if score *language deathswap.setting matches 1 if score *armor deathswap.setting matches 6 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Start Armor"},{text:" is set "},{text:"Diamond Armor",color:"green"}\
]
execute if score *language deathswap.setting matches 1 if score *armor deathswap.setting matches 7 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Start Armor"},{text:" is set "},{text:"Netherite Armor",color:"green"}\
]

#zhtw
execute if score *language deathswap.setting matches 2 if score *armor deathswap.setting matches 0 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"起始裝備"},{text:"設定為"},{text:"關閉",color:"red"}\
]
execute if score *language deathswap.setting matches 2 if score *armor deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"起始裝備"},{text:"設定為"},{text:"皮革裝備",color:"green"}\
]
execute if score *language deathswap.setting matches 2 if score *armor deathswap.setting matches 2 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"起始裝備"},{text:"設定為"},{text:"銅製裝備",color:"green"}\
]
execute if score *language deathswap.setting matches 2 if score *armor deathswap.setting matches 3 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"起始裝備"},{text:"設定為"},{text:"鎖鏈裝備",color:"green"}\
]
execute if score *language deathswap.setting matches 2 if score *armor deathswap.setting matches 4 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"起始裝備"},{text:"設定為"},{text:"鐵製裝備",color:"green"}\
]
execute if score *language deathswap.setting matches 2 if score *armor deathswap.setting matches 5 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"起始裝備"},{text:"設定為"},{text:"黃金裝備",color:"green"}\
]
execute if score *language deathswap.setting matches 2 if score *armor deathswap.setting matches 6 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"起始裝備"},{text:"設定為"},{text:"鑽石裝備",color:"green"}\
]
execute if score *language deathswap.setting matches 2 if score *armor deathswap.setting matches 7 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"起始裝備"},{text:"設定為"},{text:"獄髓裝備",color:"green"}\
]

#sound
execute as @a at @s run playsound ui.button.click master @s ~ ~ ~
