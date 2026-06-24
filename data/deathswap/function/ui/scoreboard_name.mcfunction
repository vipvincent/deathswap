 #--------------------------------------------------
#Death Swap
#data/deathswap/function/ui/scoreboard_name.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

execute if score *language deathswap.setting matches 1 run scoreboard objectives modify deathswap.win_score displayname {text:"Win Score",color:yellow}
execute if score *language deathswap.setting matches 2 run scoreboard objectives modify deathswap.win_score displayname {text:"獲勝分數",color:yellow}