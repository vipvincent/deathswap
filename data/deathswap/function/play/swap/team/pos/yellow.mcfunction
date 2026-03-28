#swap/team/pos/yellow

#summon
summon marker ~ ~ ~ {Tags:["pos","yellow_pos"]}

#calibration pos
tp @e[tag=yellow_pos,tag=!calibration] @s

#add tag calibration
tag @e[tag=yellow_pos,tag=!calibration] add calibration