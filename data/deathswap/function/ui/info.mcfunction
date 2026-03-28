#ui/info
function deathswap:ui/page/update

tellraw @s "-----------------------------------------------------"

#en
execute if score *language deathswap.setting matches 1 run tellraw @s [\
    {\
        text: "Death Swap",color: gold \
    },\
    " ",\
    {\
        nbt: "install_version",color: yellow,interpret:true,\
        storage: "deathswap:storage_main",\
    }\
]
execute if score *language deathswap.setting matches 1 run tellraw @s [\
    "Made By: ",\
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

#中文
execute if score *language deathswap.setting matches 2 run tellraw @s [\
    {\
        text: "死亡交換",color: gold,\
    },\
    " ",\
    {\
        nbt: "install_version",color:yellow,interpret:true,\
        storage: "deathswap:storage_main",\
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
