#data actionbat.center
data modify storage deathswap:status actionbar.center set value []

#wait
execute if score game deathswap.status matches 1 if score wait deathswap.timer matches 1..199 run data modify storage deathswap:status actionbar.center append value {"text":"  >> The system is being prepared <<  ","color":"aqua"}
execute if score game deathswap.status matches 1 if score wait deathswap.timer matches 200..300 run data modify storage deathswap:status actionbar.center append value {"text":"  >> The game is about to begin <<  ","color":"yellow"}

#round_time
execute if score game deathswap.status matches 2 unless score arena deathswap.status matches 0..1 run data modify storage deathswap:status actionbar.center append value {"text":"  >> Round Time: ","color":"aqua"}
execute if score game deathswap.status matches 2 unless score arena deathswap.status matches 0..1 run data modify storage deathswap:status actionbar.center append value {"score":{"name":"round_time","objective":"deathswap.timer"}}
execute if score game deathswap.status matches 2 unless score arena deathswap.status matches 0..1 run data modify storage deathswap:status actionbar.center append value {"text":"s <<  "}

#arena_prepare data actionbar.center
execute if score game deathswap.status matches 2 if score arena deathswap.status matches 0 run data modify storage deathswap:status actionbar.center append value {"text":"  >> Arena countdown: ","color":"yellow"}
execute if score game deathswap.status matches 2 if score arena deathswap.status matches 0 run data modify storage deathswap:status actionbar.center append value {"score": {"name": "arena","objective": "deathswap.timer"}}
execute if score game deathswap.status matches 2 if score arena deathswap.status matches 0 run data modify storage deathswap:status actionbar.center append value {"text":"s <<  "}

#arena_wait
execute if score game deathswap.status matches 2 if score arena deathswap.status matches 1 if score arena deathswap.timer matches 1..99 run data modify storage deathswap:status actionbar.center append value {"text":"  >> The arena is being prepared <<  ","color":"aqua"}
execute if score game deathswap.status matches 2 if score arena deathswap.status matches 1 if score arena deathswap.timer matches 100..200 run data modify storage deathswap:status actionbar.center append value {"text":"  >> The arena is about to begin <<  ","color":"yellow"}
