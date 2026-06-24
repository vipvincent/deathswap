#--------------------------------------------------
#Death Swap
#data/deathswap/function/play/swap/team/pos/blue.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#summon
summon marker ~ ~ ~ {Tags:["pos","blue_pos"]}

#calibration pos
tp @e[tag=blue_pos,tag=!calibration] @s

#add tag calibration
tag @e[tag=blue_pos,tag=!calibration] add calibration