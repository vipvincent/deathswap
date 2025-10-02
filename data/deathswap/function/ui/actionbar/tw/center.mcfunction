#data actionbat.center
data modify storage deathswap:status actionbar.center set value []


#wait
execute if score game deathswap.status matches 1 if score wait deathswap.timer matches 1..199 run data modify storage deathswap:status actionbar.center append value {"text":"  >> 系統正在準備中 <<  ","color":"aqua"}
execute if score game deathswap.status matches 1 if score wait deathswap.timer matches 200..300 run data modify storage deathswap:status actionbar.center append value {"text":"  >> 遊戲即將開始 <<  ","color":"yellow"}

#round_time
execute if score game deathswap.status matches 2 unless score arena deathswap.status matches 0..1 run data modify storage deathswap:status actionbar.center append value {"text":"  >> 回合時間：","color":"aqua"}
execute if score game deathswap.status matches 2 unless score arena deathswap.status matches 0..1 run data modify storage deathswap:status actionbar.center append value {"score":{"name":"round_time","objective":"deathswap.timer"}}
execute if score game deathswap.status matches 2 unless score arena deathswap.status matches 0..1 run data modify storage deathswap:status actionbar.center append value {"text":"秒 <<  "}

#arena_prepare data actionbar.center
execute if score game deathswap.status matches 2 if score arena deathswap.status matches 0 run data modify storage deathswap:status actionbar.center append value {"text":"  >> 競技場倒數：","color":"yellow"}
execute if score game deathswap.status matches 2 if score arena deathswap.status matches 0 run data modify storage deathswap:status actionbar.center append value {"score": {"name": "arena","objective": "deathswap.timer"}}
execute if score game deathswap.status matches 2 if score arena deathswap.status matches 0 run data modify storage deathswap:status actionbar.center append value {"text":"秒 <<  "}

#arena_wait
execute if score game deathswap.status matches 2 if score arena deathswap.status matches 1 if score arena deathswap.timer matches ..99 run data modify storage deathswap:status actionbar.center append value {"text":"  >> 競技場正在準備 <<  ","color":"aqua"}
execute if score game deathswap.status matches 2 if score arena deathswap.status matches 1 if score arena deathswap.timer matches 100.. run data modify storage deathswap:status actionbar.center append value {"text":"  >> 競技場即將開始 <<  ","color":"yellow"}
