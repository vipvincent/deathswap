#--------------------------------------------------
#Death Swap
#data/deathswap/function/play/random_effect/random.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#random
execute store result score *random_effect.effect deathswap.status run random value 1..40

#disable effect
execute if score *random_effect.effect deathswap.status matches 7 run return run function deathswap:play/random_effect/random

#data - effect
execute if score *random_effect.effect deathswap.status matches 1 run data modify storage deathswap:temp random_effect.effect set value "speed"
execute if score *random_effect.effect deathswap.status matches 2 run data modify storage deathswap:temp random_effect.effect set value "slowness"
execute if score *random_effect.effect deathswap.status matches 3 run data modify storage deathswap:temp random_effect.effect set value "haste"
execute if score *random_effect.effect deathswap.status matches 4 run data modify storage deathswap:temp random_effect.effect set value "mining_fatigue"
execute if score *random_effect.effect deathswap.status matches 5 run data modify storage deathswap:temp random_effect.effect set value "strength"
execute if score *random_effect.effect deathswap.status matches 6 run data modify storage deathswap:temp random_effect.effect set value "instant_health"
execute if score *random_effect.effect deathswap.status matches 7 run data modify storage deathswap:temp random_effect.effect set value "instant_damage"
execute if score *random_effect.effect deathswap.status matches 8 run data modify storage deathswap:temp random_effect.effect set value "jump_boost"
execute if score *random_effect.effect deathswap.status matches 9 run data modify storage deathswap:temp random_effect.effect set value "nausea"
execute if score *random_effect.effect deathswap.status matches 10 run data modify storage deathswap:temp random_effect.effect set value "regeneration"
execute if score *random_effect.effect deathswap.status matches 11 run data modify storage deathswap:temp random_effect.effect set value "resistance"
execute if score *random_effect.effect deathswap.status matches 12 run data modify storage deathswap:temp random_effect.effect set value "fire_resistance"
execute if score *random_effect.effect deathswap.status matches 13 run data modify storage deathswap:temp random_effect.effect set value "water_breathing"
execute if score *random_effect.effect deathswap.status matches 14 run data modify storage deathswap:temp random_effect.effect set value "invisibility"
execute if score *random_effect.effect deathswap.status matches 15 run data modify storage deathswap:temp random_effect.effect set value "blindness"
execute if score *random_effect.effect deathswap.status matches 16 run data modify storage deathswap:temp random_effect.effect set value "night_vision"
execute if score *random_effect.effect deathswap.status matches 17 run data modify storage deathswap:temp random_effect.effect set value "hunger"
execute if score *random_effect.effect deathswap.status matches 18 run data modify storage deathswap:temp random_effect.effect set value "weakness"
execute if score *random_effect.effect deathswap.status matches 19 run data modify storage deathswap:temp random_effect.effect set value "poison"
execute if score *random_effect.effect deathswap.status matches 20 run data modify storage deathswap:temp random_effect.effect set value "wither"
execute if score *random_effect.effect deathswap.status matches 21 run data modify storage deathswap:temp random_effect.effect set value "health_boost"
execute if score *random_effect.effect deathswap.status matches 22 run data modify storage deathswap:temp random_effect.effect set value "absorption"
execute if score *random_effect.effect deathswap.status matches 23 run data modify storage deathswap:temp random_effect.effect set value "saturation"
execute if score *random_effect.effect deathswap.status matches 24 run data modify storage deathswap:temp random_effect.effect set value "glowing"
execute if score *random_effect.effect deathswap.status matches 25 run data modify storage deathswap:temp random_effect.effect set value "levitation"
execute if score *random_effect.effect deathswap.status matches 26 run data modify storage deathswap:temp random_effect.effect set value "luck"
execute if score *random_effect.effect deathswap.status matches 27 run data modify storage deathswap:temp random_effect.effect set value "unluck"
execute if score *random_effect.effect deathswap.status matches 28 run data modify storage deathswap:temp random_effect.effect set value "slow_falling"
execute if score *random_effect.effect deathswap.status matches 29 run data modify storage deathswap:temp random_effect.effect set value "conduit_power"
execute if score *random_effect.effect deathswap.status matches 30 run data modify storage deathswap:temp random_effect.effect set value "dolphins_grace"
execute if score *random_effect.effect deathswap.status matches 31 run data modify storage deathswap:temp random_effect.effect set value "bad_omen"
execute if score *random_effect.effect deathswap.status matches 32 run data modify storage deathswap:temp random_effect.effect set value "hero_of_the_village"
execute if score *random_effect.effect deathswap.status matches 33 run data modify storage deathswap:temp random_effect.effect set value "darkness"
execute if score *random_effect.effect deathswap.status matches 34 run data modify storage deathswap:temp random_effect.effect set value "trial_omen"
execute if score *random_effect.effect deathswap.status matches 35 run data modify storage deathswap:temp random_effect.effect set value "raid_omen"
execute if score *random_effect.effect deathswap.status matches 36 run data modify storage deathswap:temp random_effect.effect set value "wind_charged"
execute if score *random_effect.effect deathswap.status matches 37 run data modify storage deathswap:temp random_effect.effect set value "weaving"
execute if score *random_effect.effect deathswap.status matches 38 run data modify storage deathswap:temp random_effect.effect set value "oozing"
execute if score *random_effect.effect deathswap.status matches 39 run data modify storage deathswap:temp random_effect.effect set value "infested"
execute if score *random_effect.effect deathswap.status matches 40 run data modify storage deathswap:temp random_effect.effect set value "breath_of_the_nautilus"

#---
#time
scoreboard players operation *random_effect deathswap.timer = *random_effect.time deathswap.setting
scoreboard players operation *random_effect.time deathswap.status = *random_effect.time deathswap.setting

#time*20 tick
#instant_health
execute if score *random_effect.effect deathswap.status matches 6 run scoreboard players operation *random_effect.time deathswap.status *= #operation.20 deathswap.status
#saturation
execute if score *random_effect.effect deathswap.status matches 22 run scoreboard players operation *random_effect.time deathswap.status *= #operation.20 deathswap.status

#---
#data - time
execute store result storage deathswap:temp random_effect.time int 1 run scoreboard players get *random_effect.time deathswap.status

#---
#effect
function deathswap:play/random_effect/effect with storage deathswap:temp random_effect