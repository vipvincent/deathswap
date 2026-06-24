#--------------------------------------------------
#Death Swap
#data/deathswap/function/ui/text_display.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

execute if score *language deathswap.setting matches 1 run data modify entity @e[tag=lobby_text,limit=1] text set value {text:"Game Lobby",color:"yellow"}
execute if score *language deathswap.setting matches 2 run data modify entity @e[tag=lobby_text,limit=1] text set value {text:"遊戲大廳",color:"yellow"}