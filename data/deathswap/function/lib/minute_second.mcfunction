#--------------------------------------------------
#Death Swap
#data/deathswap/function/lib/minute_second.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#play_time
scoreboard players operation *play_time.minute deathswap.timer = *play_time deathswap.timer
scoreboard players operation *play_time.second deathswap.timer = *play_time deathswap.timer

scoreboard players operation *play_time.minute deathswap.timer /= #operation.60 deathswap.status
scoreboard players operation *play_time.second deathswap.timer %= #operation.60 deathswap.status

execute store result storage deathswap:ui time.play_time.minute int 1 run scoreboard players get *play_time.minute deathswap.timer
execute store result storage deathswap:ui time.play_time.second int 1 run scoreboard players get *play_time.second deathswap.timer

data modify storage deathswap:ui time.play_time.minute set string storage deathswap:ui time.play_time.minute
data modify storage deathswap:ui time.play_time.second set string storage deathswap:ui time.play_time.second

execute if score *play_time.minute deathswap.timer matches 0 run data modify storage deathswap:ui time.play_time.minute set value "00"
execute if score *play_time.minute deathswap.timer matches 1 run data modify storage deathswap:ui time.play_time.minute set value "01"
execute if score *play_time.minute deathswap.timer matches 2 run data modify storage deathswap:ui time.play_time.minute set value "02"
execute if score *play_time.minute deathswap.timer matches 3 run data modify storage deathswap:ui time.play_time.minute set value "03"
execute if score *play_time.minute deathswap.timer matches 4 run data modify storage deathswap:ui time.play_time.minute set value "04"
execute if score *play_time.minute deathswap.timer matches 5 run data modify storage deathswap:ui time.play_time.minute set value "05"
execute if score *play_time.minute deathswap.timer matches 6 run data modify storage deathswap:ui time.play_time.minute set value "06"
execute if score *play_time.minute deathswap.timer matches 7 run data modify storage deathswap:ui time.play_time.minute set value "07"
execute if score *play_time.minute deathswap.timer matches 8 run data modify storage deathswap:ui time.play_time.minute set value "08"
execute if score *play_time.minute deathswap.timer matches 9 run data modify storage deathswap:ui time.play_time.minute set value "09"

execute if score *play_time.second deathswap.timer matches 0 run data modify storage deathswap:ui time.play_time.second set value "00"
execute if score *play_time.second deathswap.timer matches 1 run data modify storage deathswap:ui time.play_time.second set value "01"
execute if score *play_time.second deathswap.timer matches 2 run data modify storage deathswap:ui time.play_time.second set value "02"
execute if score *play_time.second deathswap.timer matches 3 run data modify storage deathswap:ui time.play_time.second set value "03"
execute if score *play_time.second deathswap.timer matches 4 run data modify storage deathswap:ui time.play_time.second set value "04"
execute if score *play_time.second deathswap.timer matches 5 run data modify storage deathswap:ui time.play_time.second set value "05"
execute if score *play_time.second deathswap.timer matches 6 run data modify storage deathswap:ui time.play_time.second set value "06"
execute if score *play_time.second deathswap.timer matches 7 run data modify storage deathswap:ui time.play_time.second set value "07"
execute if score *play_time.second deathswap.timer matches 8 run data modify storage deathswap:ui time.play_time.second set value "08"
execute if score *play_time.second deathswap.timer matches 9 run data modify storage deathswap:ui time.play_time.second set value "09"

data modify storage deathswap:ui time.play_time.display set value [\
    {storage:"deathswap:ui",nbt:"time.play_time.minute",interpret:true},":",{storage:"deathswap:ui",nbt:"time.play_time.second",interpret:true}\
]

#---
#round_time
scoreboard players operation *round_time.minute deathswap.timer = *round_time deathswap.timer
scoreboard players operation *round_time.second deathswap.timer = *round_time deathswap.timer

scoreboard players operation *round_time.minute deathswap.timer /= #operation.60 deathswap.status
scoreboard players operation *round_time.second deathswap.timer %= #operation.60 deathswap.status

execute store result storage deathswap:ui time.round_time.minute int 1 run scoreboard players get *round_time.minute deathswap.timer
execute store result storage deathswap:ui time.round_time.second int 1 run scoreboard players get *round_time.second deathswap.timer

data modify storage deathswap:ui time.round_time.timer set string storage deathswap:ui time.round_time.timer
data modify storage deathswap:ui time.round_time.second set string storage deathswap:ui time.round_time.second

execute if score *round_time.minute deathswap.timer matches 0 run data modify storage deathswap:ui time.round_time.minute set value "00"
execute if score *round_time.minute deathswap.timer matches 1 run data modify storage deathswap:ui time.round_time.minute set value "01"
execute if score *round_time.minute deathswap.timer matches 2 run data modify storage deathswap:ui time.round_time.minute set value "02"
execute if score *round_time.minute deathswap.timer matches 3 run data modify storage deathswap:ui time.round_time.minute set value "03"
execute if score *round_time.minute deathswap.timer matches 4 run data modify storage deathswap:ui time.round_time.minute set value "04"
execute if score *round_time.minute deathswap.timer matches 5 run data modify storage deathswap:ui time.round_time.minute set value "05"
execute if score *round_time.minute deathswap.timer matches 6 run data modify storage deathswap:ui time.round_time.minute set value "06"
execute if score *round_time.minute deathswap.timer matches 7 run data modify storage deathswap:ui time.round_time.minute set value "07"
execute if score *round_time.minute deathswap.timer matches 8 run data modify storage deathswap:ui time.round_time.minute set value "08"
execute if score *round_time.minute deathswap.timer matches 9 run data modify storage deathswap:ui time.round_time.minute set value "09"

execute if score *round_time.second deathswap.timer matches 0 run data modify storage deathswap:ui time.round_time.second set value "00"
execute if score *round_time.second deathswap.timer matches 1 run data modify storage deathswap:ui time.round_time.second set value "01"
execute if score *round_time.second deathswap.timer matches 2 run data modify storage deathswap:ui time.round_time.second set value "02"
execute if score *round_time.second deathswap.timer matches 3 run data modify storage deathswap:ui time.round_time.second set value "03"
execute if score *round_time.second deathswap.timer matches 4 run data modify storage deathswap:ui time.round_time.second set value "04"
execute if score *round_time.second deathswap.timer matches 5 run data modify storage deathswap:ui time.round_time.second set value "05"
execute if score *round_time.second deathswap.timer matches 6 run data modify storage deathswap:ui time.round_time.second set value "06"
execute if score *round_time.second deathswap.timer matches 7 run data modify storage deathswap:ui time.round_time.second set value "07"
execute if score *round_time.second deathswap.timer matches 8 run data modify storage deathswap:ui time.round_time.second set value "08"
execute if score *round_time.second deathswap.timer matches 9 run data modify storage deathswap:ui time.round_time.second set value "09"

data modify storage deathswap:ui time.round_time.display set value [\
    {storage:"deathswap:ui",nbt:"time.round_time.minute",interpret:true},":",{storage:"deathswap:ui",nbt:"time.round_time.second",interpret:true}\
]
