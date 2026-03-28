#sidebar/rank

#header & footer
scoreboard objectives modify deathswap.display.rank displayname {"storage":"deathswap:storage_main","nbt":"ui.sidebar.name","interpret":true}
scoreboard players set *credits deathswap.display.rank -2147483647
scoreboard players display name *credits deathswap.display.rank {"storage":"deathswap:storage_main","nbt":"ui.sidebar.credits","interpret":true}
scoreboard players set *header_blank deathswap.display.rank 2147483647
scoreboard players display name *header_blank deathswap.display.rank ""
scoreboard players set *footer_blank deathswap.display.rank -2147483646
scoreboard players display name *footer_blank deathswap.display.rank ""

#title
scoreboard players set *title deathswap.display.rank 2147483646
execute if score *language deathswap.setting matches 1 run scoreboard players display name *title deathswap.display.rank {text:"Win Scores:",color:yellow}
execute if score *language deathswap.setting matches 2 run scoreboard players display name *title deathswap.display.rank {text:"獲勝分數：",color:yellow}

#score
execute as @a run scoreboard players operation @s deathswap.display.rank = @s deathswap.win_score
execute as @a run scoreboard players display name @s deathswap.display.rank ["",\
    {score:{name:"@s",objective:deathswap.win_score},color:"gold"},{"text":" - ","color":"gray"},\
    {"selector":"@s",color:white}\
]



