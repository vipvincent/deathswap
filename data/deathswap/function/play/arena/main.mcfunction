# arena status
# -1 not arena
#  0 prepare 
#  1 wait
#  2 arena start

#bossbar
execute store result bossbar deathswap:arena value run scoreboard players get arena deathswap.timer

#prepare
execute if score arena deathswap.status matches -1 if score arena.start deathswap.setting = swap_count deathswap.count run function deathswap:play/arena/prepare
execute if score arena deathswap.status matches 0 if score language deathswap.setting matches 1 run bossbar set deathswap:arena name [{"text":"Arena countdown: ","color": "yellow"},{"score": {"name": "arena","objective": "deathswap.timer"}},{"text":"s"}]
execute if score arena deathswap.status matches 0 if score language deathswap.setting matches 2 run bossbar set deathswap:arena name [{"text":"競技場倒數：","color": "yellow"},{"score": {"name": "arena","objective": "deathswap.timer"}},{"text":"秒"}]

#wait
execute if score arena deathswap.status matches 0 if score arena deathswap.timer matches 0 run function deathswap:play/arena/wait
execute if score arena deathswap.status matches 1 run scoreboard players add arena deathswap.timer 1
execute if score arena deathswap.status matches 1 if score arena deathswap.timer matches 60 run function deathswap:play/arena/tp_border

#wait text
execute if score arena deathswap.status matches 1 if score arena deathswap.timer matches ..100 if score language deathswap.setting matches 1 run bossbar set deathswap:arena name {"text":"§bThe arena is being prepared"}
execute if score arena deathswap.status matches 1 if score arena deathswap.timer matches ..100 if score language deathswap.setting matches 2 run bossbar set deathswap:arena name {"text":"§b競技場正在準備"}
execute if score arena deathswap.status matches 1 if score arena deathswap.timer matches 101.. if score language deathswap.setting matches 1 run bossbar set deathswap:arena name {"text":"§eThe arena is about to begin"}
execute if score arena deathswap.status matches 1 if score arena deathswap.timer matches 101.. if score language deathswap.setting matches 2 run bossbar set deathswap:arena name {"text":"§e競技場即將開始"}
execute if score arena deathswap.status matches 1 if score arena deathswap.timer matches 10..100 if score language deathswap.setting matches 1 run title @a title {"text": "§6Death Swap"}
execute if score arena deathswap.status matches 1 if score arena deathswap.timer matches 10..100 if score language deathswap.setting matches 2 run title @a title {"text": "§6死亡交換"}
execute if score arena deathswap.status matches 1 if score arena deathswap.timer matches 10 if score language deathswap.setting matches 1 run title @a subtitle {"text": "§bThe arena is being prepared"}
execute if score arena deathswap.status matches 1 if score arena deathswap.timer matches 10 if score language deathswap.setting matches 2 run title @a subtitle {"text": "§b競技場正在準備"}
execute if score arena deathswap.status matches 1 if score arena deathswap.timer matches 100 if score language deathswap.setting matches 1 run title @a subtitle {"text": "§eArena Start in 5s"}
execute if score arena deathswap.status matches 1 if score arena deathswap.timer matches 100 if score language deathswap.setting matches 2 run title @a subtitle {"text": "§e競技場即將開始於5秒"}
execute if score arena deathswap.status matches 1 if score arena deathswap.timer matches 120 if score language deathswap.setting matches 1 run title @a subtitle {"text": "§eArena Start in 4s"}
execute if score arena deathswap.status matches 1 if score arena deathswap.timer matches 120 if score language deathswap.setting matches 2 run title @a subtitle {"text": "§e競技場即將開始於4秒"}
execute if score arena deathswap.status matches 1 if score arena deathswap.timer matches 140 if score language deathswap.setting matches 1 run title @a subtitle {"text": "§eArena Start in 3s"}
execute if score arena deathswap.status matches 1 if score arena deathswap.timer matches 140 if score language deathswap.setting matches 2 run title @a subtitle {"text": "§e競技場即將開始於3秒"}
execute if score arena deathswap.status matches 1 if score arena deathswap.timer matches 160 if score language deathswap.setting matches 1 run title @a subtitle {"text": "§eArena Start in 2s"}
execute if score arena deathswap.status matches 1 if score arena deathswap.timer matches 160 if score language deathswap.setting matches 2 run title @a subtitle {"text": "§e競技場即將開始於2秒"}
execute if score arena deathswap.status matches 1 if score arena deathswap.timer matches 180 if score language deathswap.setting matches 1 run title @a subtitle {"text": "§eArena Start in 1s"}
execute if score arena deathswap.status matches 1 if score arena deathswap.timer matches 180 if score language deathswap.setting matches 2 run title @a subtitle {"text": "§e競技場即將開始於1秒"}
execute if score arena deathswap.status matches 1 if score arena deathswap.timer matches 200 if score language deathswap.setting matches 1 run title @a subtitle {"text": "§aArena Started!"}
execute if score arena deathswap.status matches 1 if score arena deathswap.timer matches 200 if score language deathswap.setting matches 2 run title @a subtitle {"text": "§a競技場開始！"}

#wait sound
execute if score arena deathswap.status matches 1 if score arena deathswap.timer matches 140 as @a at @s run playsound ui.button.click master @s ~ ~ ~
execute if score arena deathswap.status matches 1 if score arena deathswap.timer matches 160 as @a at @s run playsound ui.button.click master @s ~ ~ ~
execute if score arena deathswap.status matches 1 if score arena deathswap.timer matches 180 as @a at @s run playsound ui.button.click master @s ~ ~ ~

# start arena
execute if score arena deathswap.status matches 1 if score arena deathswap.timer matches 200 run function deathswap:play/arena/start

#glowing
execute if score arena.shrink deathswap.status matches 2 run effect give @a[tag=player] glowing 1 255 true


#shrink 

# arena.shrink status
# 0 wait shrink
# 1 start shrink
# 2 stop shrink

#bossbar
execute if score arena deathswap.status matches 2 if score arena.shrink deathswap.status matches 2 run bossbar set deathswap:arena visible false
execute if score arena deathswap.status matches 2 if score arena.shrink deathswap.status matches 0 if score language deathswap.setting matches 1 run bossbar set deathswap:arena name [{"text": "Arena shrinking countdown: ","color": "yellow"},{"score": {"name": "arena","objective": "deathswap.timer"}},{"text": "s"}]
execute if score arena deathswap.status matches 2 if score arena.shrink deathswap.status matches 0 if score language deathswap.setting matches 2 run bossbar set deathswap:arena name [{"text": "競技場縮圈倒數：","color": "yellow"},{"score": {"name": "arena","objective": "deathswap.timer"}},{"text": "秒"}]
execute if score arena deathswap.status matches 2 if score arena.shrink deathswap.status matches 1 if score language deathswap.setting matches 1 run bossbar set deathswap:arena name [{"text": "§eThe arena is shrinking to "},[{"score": {"name": "arena.border","objective": "deathswap.status"},"color":"gold"},{"text": "x"},{"score": {"name": "arena.border","objective": "deathswap.status"}}]]
execute if score arena deathswap.status matches 2 if score arena.shrink deathswap.status matches 1 if score language deathswap.setting matches 2 run bossbar set deathswap:arena name [{"text": "§e競技場正在縮圈至"},[{"score": {"name": "arena.border","objective": "deathswap.status"},"color":"gold"},{"text": "x"},{"score": {"name": "arena.border","objective": "deathswap.status"}}]]

execute if score arena deathswap.status matches 2 if score arena.shrink deathswap.status matches 0 if score arena deathswap.timer matches 0 run function deathswap:play/arena/shrink_start
execute if score arena deathswap.status matches 2 if score arena.shrink deathswap.status matches 1 if score arena deathswap.timer matches 30 run function deathswap:play/arena/shrink_wait


