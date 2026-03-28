#swap/team/pos/green

#summon
summon marker ~ ~ ~ {Tags:["pos","green_pos"]}

#calibration pos
tp @e[tag=green_pos,tag=!calibration] @s

#add tag calibration
tag @e[tag=green_pos,tag=!calibration] add calibration