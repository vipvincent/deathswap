#--------------------------------------------------
#Death Swap
#data/deathswap/function/prepare/set_lobby.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

##old lobby

#kill lobby_text
kill @e[tag=lobby_text]

#forceload remove
execute as @e[tag=lobby] at @s run forceload remove ~ ~

#kill lobby
kill @e[tag=lobby]

#---
##new lobby

#create new lobby
execute align xz positioned ~0.5 ~ ~0.5 run summon armor_stand ~ ~0.1 ~ {Tags:["lobby"],CustomName:"lobby",Marker:true,Invisible:true}

#forceload add
execute as @e[tag=lobby] at @s run forceload add ~ ~

#set worldspawn
execute at @e[tag=lobby] run setworldspawn ~ ~ ~

#create text_display
execute at @e[tag=lobby] run summon text_display ~ ~ ~ {Tags:["lobby_text"],billboard:center,alignment:center}
function deathswap:ui/text_display

#locator_bar 
attribute @e[tag=lobby,limit=1] waypoint_transmit_range base set 1000
waypoint modify @e[tag=lobby,limit=1] color white

#---
##text 
#data temp - create
execute store result storage deathswap:temp lobby.x int 1 run data get entity @e[tag=lobby,limit=1] Pos[0]
execute store result storage deathswap:temp lobby.y int 1 run data get entity @e[tag=lobby,limit=1] Pos[1]
execute store result storage deathswap:temp lobby.z int 1 run data get entity @e[tag=lobby,limit=1] Pos[2]

data modify storage deathswap:temp lobby.pos set value [\
    "[",\
    {storage:"deathswap:temp",nbt:"lobby.x",plain:true}," ",\
    {storage:"deathswap:temp",nbt:"lobby.y",plain:true}," ",\
    {storage:"deathswap:temp",nbt:"lobby.z",plain:true},\
    "]" \
]

#en
execute if score *language deathswap.setting matches 1 if dimension minecraft:overworld run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Game Lobby",color:yellow},{text:" set at "},\
    {text:"Overworld ","color": "green"},\
    {storage:"deathswap:temp",nbt:"lobby.pos",interpret:true},\
]
execute if score *language deathswap.setting matches 1 if dimension minecraft:the_nether run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Game Lobby",color:yellow},{text:" set at "},\
    {text:"Nether ","color": "red"},\
    {storage:"deathswap:temp",nbt:"lobby.pos",interpret:true},\
]
execute if score *language deathswap.setting matches 1 if dimension minecraft:the_end run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Game Lobby",color:yellow},{text:" set at "},\
    {text:"The End ","color": "dark_purple"},\
    {storage:"deathswap:temp",nbt:"lobby.pos",interpret:true},\
]
execute if score *language deathswap.setting matches 1 unless dimension minecraft:overworld unless dimension minecraft:the_nether unless dimension minecraft:the_end run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Game Lobby",color:yellow},{text:" set at "},\
    {text:"Other ","color": "yellow"},\
    {storage:"deathswap:temp",nbt:"lobby.pos",interpret:true},\
]
#zhtw
execute if score *language deathswap.setting matches 2 if dimension minecraft:overworld run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"遊戲大廳",color:yellow},{text:"設置在"},\
    {text:"主世界 ","color": "green"},\
    {storage:"deathswap:temp",nbt:"lobby.pos",interpret:true},\
]
execute if score *language deathswap.setting matches 2 if dimension minecraft:the_nether run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"遊戲大廳",color:yellow},{text:"設置在"},\
    {text:"地獄 ","color": "red"},\
    {storage:"deathswap:temp",nbt:"lobby.pos",interpret:true},\
]
execute if score *language deathswap.setting matches 2 if dimension minecraft:the_end run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"遊戲大廳",color:yellow},{text:"設置在"},\
    {text:"終界 ","color": "dark_purple"},\
    {storage:"deathswap:temp",nbt:"lobby.pos",interpret:true},\
]
execute if score *language deathswap.setting matches 2 unless dimension minecraft:overworld unless dimension minecraft:the_nether unless dimension minecraft:the_end run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"遊戲大廳",color:yellow},{text:"設置在"},\
    {text:"其他 ","color": "yellow"},\
    {storage:"deathswap:temp",nbt:"lobby.pos",interpret:true},\
]

#data temp - remove
data remove storage deathswap:temp lobby

#sound
execute as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~

