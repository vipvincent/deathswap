#--------------------------------------------------
#Death Swap
#data/deathswap/function/ui/info.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

tellraw @s "-----------------------------------------------------"

#en
execute if score *language deathswap.setting matches 1 run tellraw @s [\
    {\
        text: "Death Swap",color: gold \
    },\
    " ",\
    {\
        nbt: "deathswap.install_version",color: yellow,interpret:true,\
        storage: "vipvincent:install_manager",\
    }\
]
execute if score *language deathswap.setting matches 1 run tellraw @s [\
    "Made by: ",\
    {\   
        text:"vipvincent",color: aqua,\
    },\
]
execute if score *language deathswap.setting matches 1 run tellraw @s [\
    "Original Concept: ",\
    {\
        text:SethBling,color:red,\
        click_event: {\
            action: open_url,\
            url: "https://www.youtube.com/watch?v=r5rEaHPt6mw" \
        }\
    }\
]

#zhtw
execute if score *language deathswap.setting matches 2 run tellraw @s [\
    {\
        text: "死亡交換",color: gold,\
    },\
    " ",\
    {\
        nbt: "deathswap.install_version",color:yellow,interpret:true,\
        storage: "vipvincent:install_manager",\
    }\
]
execute if score *language deathswap.setting matches 2 run tellraw @s [\
    "製作：",\
    {\   
        text:"vipvincent",color: aqua,\
    },\    
]

execute if score *language deathswap.setting matches 2 run tellraw @s [\
    "原始概念：",\
    {\
        text:SethBling,color:red,\
        click_event: {\
            action: open_url,\
            url: "https://www.youtube.com/watch?v=r5rEaHPt6mw" \
        }\
    }\
]

function deathswap:ui/link

tellraw @s "-----------------------------------------------------"

execute as @s at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~
