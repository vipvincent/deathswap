#play/arena/bossbar

#visable
bossbar set deathswap:arena players @a
execute if score *arena.shrink deathswap.status matches 2 run bossbar set deathswap:arena visible false

#store value
execute store result bossbar deathswap:arena value run scoreboard players get *arena deathswap.timer

execute if score *arena deathswap.status matches 0 if score *language deathswap.setting matches 1 run bossbar set deathswap:arena name [\
    {text:"Arena countdown: ",color:yellow},\
    {score: {name:"*arena",objective:"deathswap.timer"}},"s"\
]
execute if score *arena deathswap.status matches 0 if score *language deathswap.setting matches 2 run bossbar set deathswap:arena name [\
    {text:"競技場倒數：",color: yellow},\
    {score: {name:"*arena",objective:"deathswap.timer"}},"秒"\
]

#wait
execute if score *arena deathswap.status matches 1 if score *arena deathswap.timer matches ..99 if score *language deathswap.setting matches 1 run bossbar set deathswap:arena name [\
    {"text":"The Arena is being prepared",color:aqua}\
]
execute if score *arena deathswap.status matches 1 if score *arena deathswap.timer matches ..99 if score *language deathswap.setting matches 2 run bossbar set deathswap:arena name [\
    {"text":"競技場正在準備",color:aqua}\
]
execute if score *arena deathswap.status matches 1 if score *arena deathswap.timer matches 100.. if score *language deathswap.setting matches 1 run bossbar set deathswap:arena name [\
    {"text":"The Arena is about to begin",color:yellow}\
]
execute if score *arena deathswap.status matches 1 if score *arena deathswap.timer matches 100.. if score *language deathswap.setting matches 2 run bossbar set deathswap:arena name [\
    {"text":"競技場即將開始",color:yellow}\
]

#shrink
execute if score *arena deathswap.status matches 2 if score *arena.shrink deathswap.status matches 0 if score *language deathswap.setting matches 1 run bossbar set deathswap:arena name [\
    {text: "Arena Shrinking Countdown: ",color: yellow,},\
    {score: {name: "*arena",objective: "deathswap.timer"}},"s",\
]
execute if score *arena deathswap.status matches 2 if score *arena.shrink deathswap.status matches 1 if score *language deathswap.setting matches 1 run bossbar set deathswap:arena name [\
    {\
        text: "The Arena is Shrinking to ",color: yellow,\
    },\
    {\
        text:"",color:gold,\
        extra:[\
            {score: {name: "*arena.border",objective: "deathswap.status"}},"x",\
            {score: {name: "*arena.border",objective: "deathswap.status"}}\
        ]\
    }\
]
execute if score *arena deathswap.status matches 2 if score *arena.shrink deathswap.status matches 0 if score *language deathswap.setting matches 2 run bossbar set deathswap:arena name [\
    {text: "競技場縮圈倒數：","color": yellow,},\
    {score: {name: "*arena",objective: "deathswap.timer"}},"秒",\
]
execute if score *arena deathswap.status matches 2 if score *arena.shrink deathswap.status matches 1 if score *language deathswap.setting matches 2 run bossbar set deathswap:arena name [\
    {text: "競技場正在縮圈至","color": yellow},\
    {\
        text:"",color:gold,\
        extra:[\
            {score: {name: "*arena.border",objective: "deathswap.status"}},"x",\
            {score: {name: "*arena.border",objective: "deathswap.status"}}\
        ]\
    }\
]