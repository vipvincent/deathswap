#swap/team/pos/red

#summon
summon marker ~ ~ ~ {Tags:["pos","red_pos"]}

#calibration pos
tp @e[tag=red_pos,tag=!calibration] @s

#add tag calibration
tag @e[tag=red_pos,tag=!calibration] add calibration