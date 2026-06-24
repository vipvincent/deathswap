#--------------------------------------------------
#Death Swap
#data/deathswap/function/setting/main/spawn_monsters.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

scoreboard players add *spawn_monsters deathswap.setting 1
execute if score *spawn_monsters deathswap.setting matches 2 run scoreboard players set *spawn_monsters deathswap.setting 0

#en
execute if score *language deathswap.setting matches 1 if score *spawn_monsters deathswap.setting matches 0 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Monsters Spawn"},{text:" is set "},{text:"Disable",color:"red"}\
]
execute if score *language deathswap.setting matches 1 if score *spawn_monsters deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Monsters Spawn"},{text:" is set "},{text:"Enabled",color:"green"}\
]

#zhtw
execute if score *language deathswap.setting matches 2 if score *spawn_monsters deathswap.setting matches 0 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"怪物生成"},{text:"設定為"},{text:"關閉",color:"red"}\
]
execute if score *language deathswap.setting matches 2 if score *spawn_monsters deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"怪物生成"},{text:"設定為"},{text:"開啟",color:"green"}\
]

#sound
execute as @a at @s run playsound ui.button.click master @s ~ ~ ~
