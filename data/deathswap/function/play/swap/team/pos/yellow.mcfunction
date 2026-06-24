#--------------------------------------------------
#Death Swap
#data/deathswap/function/play/swap/team/pos/yellow.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#summon
summon marker ~ ~ ~ {Tags:["pos","yellow_pos"]}

#calibration pos
tp @e[tag=yellow_pos,tag=!calibration] @s

#add tag calibration
tag @e[tag=yellow_pos,tag=!calibration] add calibration