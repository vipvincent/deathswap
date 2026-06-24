#--------------------------------------------------
#Death Swap
#data/deathswap/function/ui/bossbar/gmchange.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#visable
bossbar set deathswap:gmchange players @a

#---
##bossbar value/max
#gmchange pause
execute if score *gmchange.pause deathswap.timer matches 1.. store result bossbar deathswap:gmchange value run scoreboard players get *gmchange.pause deathswap.timer
execute if score *gmchange.pause deathswap.timer matches 1.. run bossbar set deathswap:gmchange max 5

#survival/creative
execute if score *gmchange.pause deathswap.timer matches ..0 store result bossbar deathswap:gmchange value run scoreboard players get *gmchange.time deathswap.timer
execute if score *gmchange.pause deathswap.timer matches ..0 if score *gmchange deathswap.status matches 0 store result bossbar deathswap:gmchange max run scoreboard players get *gmchange.survival_time deathswap.setting
execute if score *gmchange.pause deathswap.timer matches ..0 if score *gmchange deathswap.status matches 1 store result bossbar deathswap:gmchange max run scoreboard players get *gmchange.creative_time deathswap.setting

#---
##color/style
#gmchange pause
execute if score *gmchange.pause deathswap.timer matches 1.. run bossbar set deathswap:gmchange color yellow
execute if score *gmchange.pause deathswap.timer matches 1.. run bossbar set deathswap:gmchange style progress

#survival/creative
execute if score *gmchange.pause deathswap.timer matches ..0 if score *gmchange deathswap.status matches 0 run bossbar set deathswap:gmchange color green
execute if score *gmchange.pause deathswap.timer matches ..0 if score *gmchange deathswap.status matches 0 run bossbar set deathswap:gmchange style notched_10
execute if score *gmchange.pause deathswap.timer matches ..0 if score *gmchange deathswap.status matches 1 run bossbar set deathswap:gmchange color red
execute if score *gmchange.pause deathswap.timer matches ..0 if score *gmchange deathswap.status matches 1 run bossbar set deathswap:gmchange style notched_6

#---
##name
#gmchange pause
execute if score *language deathswap.setting matches 1 if score *gmchange.pause deathswap.timer matches 1.. run bossbar set deathswap:gmchange name [\
    {\
        text:"Gamemode Change Pause: ",color:yellow,\
    },\
    {\
        text:"",color:gold,\
        extra:[\
            {score:{name: "*gmchange.pause",objective: "deathswap.timer"}},"s",\
        ]\
    }\
]
execute if score *language deathswap.setting matches 2 if score *gmchange.pause deathswap.timer matches 1.. run bossbar set deathswap:gmchange name [\
    {\
        text:"遊戲模式切換暫停：",color:yellow,\
    },\
    {\
        text:"",color:gold,\
        extra:[\
            {score:{name: "*gmchange.pause",objective: "deathswap.timer"}},"秒",\
        ]\
    }\
]

#survival
execute if score *language deathswap.setting matches 1 if score *gmchange.pause deathswap.timer matches ..0 if score *gmchange deathswap.status matches 0 run bossbar set deathswap:gmchange name [\
    {\
        text: "Gamemode Change in ",color:green,\
    },\
    {\
        text:"",color:gold,\
        extra:[\
            {score:{name: "*gmchange.time",objective: "deathswap.timer"}},"s",\
        ]\
    },\
    " to Creative",\
]
execute if score *language deathswap.setting matches 2 if score *gmchange.pause deathswap.timer matches ..0 if score *gmchange deathswap.status matches 0 run bossbar set deathswap:gmchange name [\
    {\
        text: "遊戲模式將於",color:green,\
    },\
    {\
        text:"",color:gold,\
        extra:[\
            {score:{name: "*gmchange.time",objective: "deathswap.timer"}},"秒",\
        ]\
    },\
    "後切換至創造模式",\
]

#creative
execute if score *language deathswap.setting matches 1 if score *gmchange.pause deathswap.timer matches ..0 if score *gmchange deathswap.status matches 1 run bossbar set deathswap:gmchange name [\
    {\
        text: "Gamemode Change in ",color:red,\
    },\
    {\
        text:"",color:gold,\
        extra:[\
            {score:{name: "*gmchange.time",objective: "deathswap.timer"}},"s",\
        ]\
    },\
    " to Survival",\
]
execute if score *language deathswap.setting matches 2 if score *gmchange.pause deathswap.timer matches ..0 if score *gmchange deathswap.status matches 1 run bossbar set deathswap:gmchange name [\
    {\
        text: "遊戲模式將於",color:red,\
    },\
    {\
        text:"",color:gold,\
        extra:[\
            {score:{name: "*gmchange.time",objective: "deathswap.timer"}},"秒",\
        ]\
    },\
    "後切換至生存模式",\
]

