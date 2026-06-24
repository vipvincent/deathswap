#--------------------------------------------------
#Death Swap
#data/deathswap/function/setting/killer/weapon.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

scoreboard players add *killer.weapon deathswap.setting 1
execute if score *killer.weapon deathswap.setting matches 8 run scoreboard players set *killer.weapon deathswap.setting 0

#en killer Weapon
execute if score *language deathswap.setting matches 1 if score *killer.weapon deathswap.setting matches 0 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"killer Weapon"},{text:" is set "},{text:"Disable",color:"red"}\
]
execute if score *language deathswap.setting matches 1 if score *killer.weapon deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"killer Weapon"},{text:" is set "},{text:"Wooden Sword",color:"green"}\
]
execute if score *language deathswap.setting matches 1 if score *killer.weapon deathswap.setting matches 2 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"killer Weapon"},{text:" is set "},{text:"Stone Sword",color:"green"}\
]
execute if score *language deathswap.setting matches 1 if score *killer.weapon deathswap.setting matches 3 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"killer Weapon"},{text:" is set "},{text:"Copper Sword",color:"green"}\
]
execute if score *language deathswap.setting matches 1 if score *killer.weapon deathswap.setting matches 4 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"killer Weapon"},{text:" is set "},{text:"Iron Sword",color:"green"}\
]
execute if score *language deathswap.setting matches 1 if score *killer.weapon deathswap.setting matches 5 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"killer Weapon"},{text:" is set "},{text:"Golden Sword",color:"green"}\
]
execute if score *language deathswap.setting matches 1 if score *killer.weapon deathswap.setting matches 6 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"killer Weapon"},{text:" is set "},{text:"Diamond Sword",color:"green"}\
]
execute if score *language deathswap.setting matches 1 if score *killer.weapon deathswap.setting matches 7 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"killer Weapon"},{text:" is set "},{text:"Netherite Sword",color:"green"}\
]

#zhtw
execute if score *language deathswap.setting matches 2 if score *killer.weapon deathswap.setting matches 0 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"殺手武器"},{text:"設定為"},{text:"關閉",color:"red"}\
]
execute if score *language deathswap.setting matches 2 if score *killer.weapon deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"殺手武器"},{text:"設定為"},{text:"木劍",color:"green"}\
]
execute if score *language deathswap.setting matches 2 if score *killer.weapon deathswap.setting matches 2 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"殺手武器"},{text:"設定為"},{text:"石劍",color:"green"}\
]
execute if score *language deathswap.setting matches 2 if score *killer.weapon deathswap.setting matches 3 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"殺手武器"},{text:"設定為"},{text:"銅劍",color:"green"}\
]
execute if score *language deathswap.setting matches 2 if score *killer.weapon deathswap.setting matches 4 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"殺手武器"},{text:"設定為"},{text:"鐵劍",color:"green"}\
]
execute if score *language deathswap.setting matches 2 if score *killer.weapon deathswap.setting matches 5 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"殺手武器"},{text:"設定為"},{text:"金劍",color:"green"}\
]
execute if score *language deathswap.setting matches 2 if score *killer.weapon deathswap.setting matches 6 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"殺手武器"},{text:"設定為"},{text:"鑽石劍",color:"green"}\
]
execute if score *language deathswap.setting matches 2 if score *killer.weapon deathswap.setting matches 7 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"殺手武器"},{text:"設定為"},{text:"獄髓劍",color:"green"}\
]

#sound
execute as @a at @s run playsound ui.button.click master @s ~ ~ ~
