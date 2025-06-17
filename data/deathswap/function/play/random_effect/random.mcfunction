#reset time
scoreboard players operation random_effect deathswap.timer = random_effect.time deathswap.setting

#random
execute store result score random_effect.effect deathswap.status run random value 1..39

#data
execute if score random_effect.effect deathswap.status matches 1 run data merge storage deathswap:status {random_effect:{effect:"speed"}}
execute if score random_effect.effect deathswap.status matches 2 run data merge storage deathswap:status {random_effect:{effect:"slowness"}}
execute if score random_effect.effect deathswap.status matches 3 run data merge storage deathswap:status {random_effect:{effect:"haste"}}
execute if score random_effect.effect deathswap.status matches 4 run data merge storage deathswap:status {random_effect:{effect:"mining_fatigue"}}
execute if score random_effect.effect deathswap.status matches 5 run data merge storage deathswap:status {random_effect:{effect:"strength"}}
execute if score random_effect.effect deathswap.status matches 6 run data merge storage deathswap:status {random_effect:{effect:"instant_health"}}
execute if score random_effect.effect deathswap.status matches 7 run data merge storage deathswap:status {random_effect:{effect:"instant_damage"}}
execute if score random_effect.effect deathswap.status matches 8 run data merge storage deathswap:status {random_effect:{effect:"jump_boost"}}
execute if score random_effect.effect deathswap.status matches 9 run data merge storage deathswap:status {random_effect:{effect:"nausea"}}
execute if score random_effect.effect deathswap.status matches 10 run data merge storage deathswap:status {random_effect:{effect:"regeneration"}}
execute if score random_effect.effect deathswap.status matches 11 run data merge storage deathswap:status {random_effect:{effect:"resistance"}}
execute if score random_effect.effect deathswap.status matches 12 run data merge storage deathswap:status {random_effect:{effect:"fire_resistance"}}
execute if score random_effect.effect deathswap.status matches 13 run data merge storage deathswap:status {random_effect:{effect:"water_breathing"}}
execute if score random_effect.effect deathswap.status matches 14 run data merge storage deathswap:status {random_effect:{effect:"invisibility"}}
execute if score random_effect.effect deathswap.status matches 15 run data merge storage deathswap:status {random_effect:{effect:"blindness"}}
execute if score random_effect.effect deathswap.status matches 16 run data merge storage deathswap:status {random_effect:{effect:"night_vision"}}
execute if score random_effect.effect deathswap.status matches 17 run data merge storage deathswap:status {random_effect:{effect:"hunger"}}
execute if score random_effect.effect deathswap.status matches 18 run data merge storage deathswap:status {random_effect:{effect:"weakness"}}
execute if score random_effect.effect deathswap.status matches 19 run data merge storage deathswap:status {random_effect:{effect:"poison"}}
execute if score random_effect.effect deathswap.status matches 20 run data merge storage deathswap:status {random_effect:{effect:"wither"}}
execute if score random_effect.effect deathswap.status matches 21 run data merge storage deathswap:status {random_effect:{effect:"health_boost"}}
execute if score random_effect.effect deathswap.status matches 22 run data merge storage deathswap:status {random_effect:{effect:"absorption"}}
execute if score random_effect.effect deathswap.status matches 23 run data merge storage deathswap:status {random_effect:{effect:"saturation"}}
execute if score random_effect.effect deathswap.status matches 24 run data merge storage deathswap:status {random_effect:{effect:"glowing"}}
execute if score random_effect.effect deathswap.status matches 25 run data merge storage deathswap:status {random_effect:{effect:"levitation"}}
execute if score random_effect.effect deathswap.status matches 26 run data merge storage deathswap:status {random_effect:{effect:"luck"}}
execute if score random_effect.effect deathswap.status matches 27 run data merge storage deathswap:status {random_effect:{effect:"unluck"}}
execute if score random_effect.effect deathswap.status matches 28 run data merge storage deathswap:status {random_effect:{effect:"slow_falling"}}
execute if score random_effect.effect deathswap.status matches 29 run data merge storage deathswap:status {random_effect:{effect:"conduit_power"}}
execute if score random_effect.effect deathswap.status matches 30 run data merge storage deathswap:status {random_effect:{effect:"dolphins_grace"}}
execute if score random_effect.effect deathswap.status matches 31 run data merge storage deathswap:status {random_effect:{effect:"bad_omen"}}
execute if score random_effect.effect deathswap.status matches 32 run data merge storage deathswap:status {random_effect:{effect:"hero_of_the_village"}}
execute if score random_effect.effect deathswap.status matches 33 run data merge storage deathswap:status {random_effect:{effect:"darkness"}}
execute if score random_effect.effect deathswap.status matches 34 run data merge storage deathswap:status {random_effect:{effect:"trial_omen"}}
execute if score random_effect.effect deathswap.status matches 35 run data merge storage deathswap:status {random_effect:{effect:"raid_omen"}}
execute if score random_effect.effect deathswap.status matches 36 run data merge storage deathswap:status {random_effect:{effect:"wind_charged"}}
execute if score random_effect.effect deathswap.status matches 37 run data merge storage deathswap:status {random_effect:{effect:"weaving"}}
execute if score random_effect.effect deathswap.status matches 38 run data merge storage deathswap:status {random_effect:{effect:"oozing"}}
execute if score random_effect.effect deathswap.status matches 39 run data merge storage deathswap:status {random_effect:{effect:"infested"}}

#time
scoreboard players operation random_effect.time deathswap.status = random_effect.time deathswap.setting
execute if score random_effect.effect deathswap.status matches 6 run scoreboard players operation random_effect.time deathswap.status *= tick deathswap.status
execute if score random_effect.effect deathswap.status matches 7 run scoreboard players operation random_effect.time deathswap.status *= tick deathswap.status
execute if score random_effect.effect deathswap.status matches 23 run scoreboard players operation random_effect.time deathswap.status *= tick deathswap.status
execute store result storage deathswap:status random_effect.time int 1 run scoreboard players get random_effect.time deathswap.status

#effect
function deathswap:play/random_effect/effect with storage deathswap:status random_effect