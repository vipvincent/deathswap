#--------------------------------------------------
#Death Swap
#data/deathswap/function/ui/sidebar/rank.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#sidebar/rank

#shared_object
function deathswap:ui/sidebar/shared_object {score_objectives:"deathswap.display.rank"}

#title
scoreboard players set *title deathswap.display.rank 2147483646
execute if score *language deathswap.setting matches 1 run scoreboard players display name *title deathswap.display.rank {text:"Win Scores: ",color:yellow}
execute if score *language deathswap.setting matches 2 run scoreboard players display name *title deathswap.display.rank {text:"獲勝分數：",color:yellow}

#score
execute as @a run scoreboard players operation @s deathswap.display.rank = @s deathswap.win_score
execute as @a run scoreboard players display name @s deathswap.display.rank ["",\
    {"selector":"@s","color":"white"},{"text":" - ","color":"gray"},\
    {score:{name:"@s",objective:deathswap.win_score},color:"gold"}\
]



