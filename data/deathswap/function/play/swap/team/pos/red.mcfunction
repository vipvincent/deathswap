#--------------------------------------------------
#Death Swap
#data/deathswap/function/play/swap/team/pos/red.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#summon
summon marker ~ ~ ~ {Tags:["pos","red_pos"]}

#calibration pos
tp @e[tag=red_pos,tag=!calibration] @s

#add tag calibration
tag @e[tag=red_pos,tag=!calibration] add calibration